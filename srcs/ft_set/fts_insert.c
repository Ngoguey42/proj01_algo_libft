/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fts_insert.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/12 10:34:30 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/12 13:41:02 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_set.h"
#include "ft_debug.h" //debug
#include <errno.h>

# define SETNODE struct s_ftset_node
/* #define QPRINTF qprintf */
#define QPRINTF(...)


// insert_tools
void			fts_increment_parents_heights(t_ftset_node const *son
												, t_ftset_node *parent)
{
	t_ftset_node const	*brother;

	while (parent != NULL)
	{
		if (parent->l == son)
			brother = parent->r;
		else
			brother = parent->l;
		if (brother != NULL && brother->height >= son->height)
			return ;
		parent->height = son->height + 1;
		son = parent;
		parent = parent->parent;
	}
	return ;
}

t_ftset_node	*fts_gen_node(t_ftset *s
								, t_ftset_node *parent
								, t_ftset_node const *new
								, t_ftset_insertion *status)
{
	SETNODE		*anode;

	anode = ft_memdup(new, s->chunk_size);
	if (anode == NULL)
		return (NULL);
	anode->height = 1;
	anode->l = NULL;
	anode->r = NULL;
	anode->parent = parent;
	s->size++;
	if (status != NULL)
	{
		status->ptr = anode;
		status->inserted = true;
	}
	return (anode);
}

// balance tools
void			fts_repair_sons_link(SETNODE *son, SETNODE *parent)
{
	if (son != NULL)
		son->parent = parent;
	return ;
}

void			fts_repair_node_height(SETNODE *node)
{
	SETNODE		*l = node->l;
	SETNODE		*r = node->r;
	int const	rh = r == NULL ? 0 : r->height;
	int const	lh = l == NULL ? 0 : l->height;

	node->height = MAX(rh, lh) + 1;
	return ;
}

void			fts_repair_parents_link(SETNODE *son, SETNODE *parent
										,SETNODE const *oldson)
{
	if (parent != NULL)
	{
		if (parent->l == oldson)
			parent->l = son;
		else
			parent->r = son;
	}
	return ;
}

static void			fts_repair_parents_heights(t_ftset_node *node)
{
	while (node != NULL)
	{
		fts_repair_node_height(node);
		node = node->parent;
	}
	return ;
}


// balance
static SETNODE		*bal_ll(t_ftset_node *cur
								, t_ftset_node *l1
								, t_ftset_node *r1
								, t_ftset_node *l2
								, t_ftset_node *r2)
{
	QPRINTF("bal ll\n");
	*l1 = (SETNODE){cur->parent, l2, cur, 0};
	*cur = (SETNODE){l1, r2, r1, 0};
	fts_repair_sons_link(r2, cur);
	fts_repair_parents_link(l1, l1->parent, cur);
	fts_repair_node_height(cur);
	fts_repair_node_height(l1);
	fts_repair_parents_heights(l1->parent);
	return (l1);
}

static SETNODE		*bal_lr(t_ftset_node *cur
								, t_ftset_node *l1
								, t_ftset_node *r1
								, t_ftset_node *l2
								, t_ftset_node *r2)
{
	t_ftset_node	*l3;
	t_ftset_node	*r3;

	QPRINTF("bal lr\n");
	l3 = r2->l;
	r3 = r2->r;
	*r2 = (SETNODE){cur->parent, l1, cur, 0};
	*l1 = (SETNODE){r2, l2, l3, 0};
	*cur = (SETNODE){r2, r3, r1, 0};
	fts_repair_sons_link(l3, l1);
	fts_repair_sons_link(r3, cur);
	fts_repair_parents_link(r2, r2->parent, cur);
	fts_repair_node_height(l1);
	fts_repair_node_height(cur);
	fts_repair_node_height(r2);
	fts_repair_parents_heights(r2->parent);
	return (r2);
}

static SETNODE		*bal_rr(t_ftset_node *cur
								, t_ftset_node *l1
								, t_ftset_node *r1
								, t_ftset_node *l2
								, t_ftset_node *r2)
{
	QPRINTF("bal rr\n");
	*r1 = (SETNODE){cur->parent, cur, r2, 0};
	*cur = (SETNODE){r1, l1, l2, 0};
	fts_repair_sons_link(l2, cur);
	fts_repair_parents_link(r1, r1->parent, cur);
	fts_repair_node_height(cur);
	fts_repair_node_height(r1);
	fts_repair_parents_heights(r1->parent);
	return (r1);
}

static SETNODE		*bal_rl(t_ftset_node *cur
								, t_ftset_node *l1
								, t_ftset_node *r1
								, t_ftset_node *l2
								, t_ftset_node *r2)
{
	QPRINTF("bal rl\n");
	t_ftset_node	*l3;
	t_ftset_node	*r3;

	l3 = l2->l;
	r3 = l2->r;
	*l2 = (SETNODE){cur->parent, cur, r1, 0};
	*cur = (SETNODE){l2, l1, l3, 0};
	*r1 = (SETNODE){l2, r3, r2, 0};
	fts_repair_sons_link(l3, cur);
	fts_repair_sons_link(r3, r1);
	fts_repair_parents_link(l2, l2->parent, cur);
	fts_repair_node_height(r1);
	fts_repair_node_height(cur);
	fts_repair_node_height(l2);
	fts_repair_parents_heights(l2->parent);
	return (l2);
}

#define ARGS cur, l1, r1, l2, r2
SETNODE			*fts_rebalance_node(t_ftset_node *cur)
{
	t_ftset_node	*l1;
	t_ftset_node	*r1;
	t_ftset_node	*l2;
	t_ftset_node	*r2;
	int				diff;

	l1 = cur->l;
	r1 = cur->r;
	diff = (l1 == NULL ? 0 : l1->height) - (r1 == NULL ? 0 : r1->height);
	if (diff > 1)
	{
		l2 = l1->l;
		r2 = l1->r;
		diff = (l2 == NULL ? 0 : l2->height) - (r2 == NULL ? 0 : r2->height);
		return (diff >= 0 ? bal_ll(ARGS) : bal_lr(ARGS));
	}
	else if (diff < -1)
	{
		l2 = r1->l;
		r2 = r1->r;
		diff = (l2 == NULL ? 0 : l2->height) - (r2 == NULL ? 0 : r2->height);
		return (diff <= 0 ? bal_rr(ARGS) : bal_rl(ARGS));
	}
	return (cur);
}

//insert
SETNODE         *fts_build_cur(t_ftset *const s
							   , t_ftset_node const *const new
							   , t_ftset_insertion *const status
							   , t_ftset_node *const cur);

static SETNODE	*build_left(t_ftset *const s
							, t_ftset_node const *const new
							, t_ftset_insertion *const status
							, t_ftset_node *const cur)
{
	t_ftset_node	*newson;
	
	if (cur->l == NULL)
	{
		QPRINTF("buildcase <add\n");
		newson = fts_gen_node(s, cur, new, status);
		cur->l = newson;
		fts_increment_parents_heights(newson, cur);
	}
	else
	{
		QPRINTF("buildcase <\n");
		newson = fts_build_cur(s, new, status, cur->l);
	}
	if (newson == NULL)
		return (NULL);
	return (fts_rebalance_node(cur));
}

static SETNODE	*build_right(t_ftset *const s
							, t_ftset_node const *const new
							, t_ftset_insertion *const status
							, t_ftset_node *const cur)
{
	t_ftset_node	*newson;
	
	if (cur->r == NULL)
	{
		QPRINTF("buildcase <add\n");
		newson = fts_gen_node(s, cur, new, status);
		cur->r = newson;
		fts_increment_parents_heights(newson, cur);
	}
	else
	{
		QPRINTF("buildcase <\n");
		newson = fts_build_cur(s, new, status, cur->r);
	}
	if (newson == NULL)
		return (NULL);
	return (fts_rebalance_node(cur));
}

SETNODE			*fts_build_cur(t_ftset *const s
							, t_ftset_node const *const new
							, t_ftset_insertion *const status
							, t_ftset_node *const cur)
{
	int const		cmp = s->cmp(cur, new);

	if (cmp < 0)
		return (build_left(s, new, status, cur));
	else if (cmp > 0)
		return (build_right(s, new, status, cur));
	QPRINTF("buildcase ==\n");
	if (status != NULL)
		*status = (t_ftset_insertion){cur, false};
	return (cur);
}

int				fts_insert(t_ftset *s, t_ftset_node const *node
								, t_ftset_insertion *status)
{
	SETNODE		*head;

	if (s->size == 0)
	{
		QPRINTF("buildcase first\n");
		head = fts_gen_node(s, NULL, node, status);
	}
	else
		head = fts_build_cur(s, node, status, s->head);
	if (head == NULL)
		return (ENOMEM);
	s->head = head;
	s->height = head->height;
	return (0);
}
