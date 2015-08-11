
#include "ft_set.h"
#include "ft_debug.h" //debug
#include <errno.h>

# define SETNODE struct s_ftset_node



#define qprintf(...)

static void			increment_parents_heights(t_ftset_node const *son
												, t_ftset_node *parent)
{
	t_ftset_node const	*brother;

	while (parent != NULL)
	{
		if (parent->l == son)
			brother = parent->r;
		else if (parent->r == son)
			brother = parent->l;
		else
		{
			lprintf("HUGE ERROR....");
			return ;
		}
		// lprintf("test: parent%zu bro%zu  son%zu"
		// , parent->height
		// , brother == NULL ? 42u : brother->height, son->height);
		qprintf("parent{%p} son{%p} brother{%p}", parent, son, brother);
		if (brother != NULL && brother->height >= son->height)
			return ;
		parent->height = son->height + 1;
		son = parent;
		parent = parent->parent;
	}
	return ;
}


static t_ftset_node	*gen_node(t_ftset *s
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
	qprintf("building %02d when set->height=%zu\n", *(int*)(new+1), s->height);
	anode->parent = parent;
	s->size++;
	if (status != NULL)
	{
		status->ptr = anode;
		status->inserted = true;
	}
	return (anode);
}

void			repair_sons_link(SETNODE *son, SETNODE *parent)
{
	if (son != NULL)
		son->parent = parent;
	return ;
}

void			repair_node_height(SETNODE *node)
{
	SETNODE		*l = node->l;
	SETNODE		*r = node->r;
	int const	rh = r == NULL ? 0 : r->height;
	int const	lh = l == NULL ? 0 : l->height;

	node->height = MAX(rh, lh) + 1;
	return ;
}

void			repair_parents_link(SETNODE *son, SETNODE *parent
										,SETNODE const *oldson)
{
	if (parent != NULL)
	{
		if (parent->l == oldson)
			parent->l = son;
		else if (parent->r == oldson)
			parent->r = son;
		else
			lprintf("HUGE ERROR repair_parents_link");
	}
	return ;
}

static void			repair_parents_heights(t_ftset_node *node)
{
	while (node != NULL)
	{
		repair_node_height(node);
		node = node->parent;
	}
	return ;
}

static SETNODE		*bal_ll(t_ftset_node *cur
								, t_ftset_node *l1
								, t_ftset_node *r1
								, t_ftset_node *l2
								, t_ftset_node *r2)
{
	SETNODE const	tmp = (SETNODE){l1, r2, r1, 0};

	*l1 = (SETNODE){cur->parent, l2, cur, 0};
	*cur = tmp;
	repair_sons_link(r2, cur);
	repair_parents_link(l1, l1->parent, cur);
	repair_node_height(cur);
	repair_node_height(l1);
	repair_parents_heights(l1->parent);
	return (l1);
}

static SETNODE		*bal_lr(t_ftset_node *cur
								, t_ftset_node *l1
								, t_ftset_node *r1
								, t_ftset_node *l2
								, t_ftset_node *r2)
{
	(void)l1;
	(void)r1;
	(void)l2;
	(void)r2;
	return (cur);
}

static SETNODE		*bal_rr(t_ftset_node *cur
								, t_ftset_node *l1
								, t_ftset_node *r1
								, t_ftset_node *l2
								, t_ftset_node *r2)
{
	(void)l1;
	(void)r1;
	(void)l2;
	(void)r2;
	return (cur);
}

static SETNODE		*bal_rl(t_ftset_node *cur
								, t_ftset_node *l1
								, t_ftset_node *r1
								, t_ftset_node *l2
								, t_ftset_node *r2)
{
	(void)l1;
	(void)r1;
	(void)l2;
	(void)r2;
	return (cur);
}


static SETNODE		*rebalance_node(t_ftset_node *cur)
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
		return (diff >= 0 ? bal_ll(cur, l1, r1, l2, r2) : bal_lr(cur, l1, r1, l2, r2));
	}
	else if (diff < 1)
	{
		l2 = r1->l;
		r2 = r1->r;
		diff = (l2 == NULL ? 0 : l2->height) - (r2 == NULL ? 0 : r2->height);
		return (diff >= 0 ? bal_rr(cur, l1, r1, l2, r2) : bal_rl(cur, l1, r1, l2, r2));
	}
	return (cur);
}

static SETNODE		*build_cur(t_ftset *const s
							, t_ftset_node const *const new
							, t_ftset_insertion *const status
							, t_ftset_node *const cur)
{
	int const		cmp = s->cmp(cur, new);
	t_ftset_node	*newson;

	if (cmp == 0) //found
	{
		qprintf("buildcase ==\n");
		if (status != NULL)
			*status = (t_ftset_insertion){cur, false};
		return (cur);
	}
	else if (cmp < 0 && cur->l == NULL)
	{
		qprintf("buildcase <add\n");
		newson = gen_node(s, cur, new, status);
		cur->l = newson;
		increment_parents_heights(newson, cur);
		if (newson == NULL)
			return (NULL);
		return (rebalance_node(cur));
	}
	else if (cmp < 0)
	{
		qprintf("buildcase <\n");
		newson = build_cur(s, new, status, cur->l);
		if (newson == NULL)
			return (NULL);
		return (rebalance_node(cur));
	}
	else if (cmp > 0 && cur->r == NULL)
	{
		qprintf("buildcase >add\n");
		newson = gen_node(s, cur, new, status);
		cur->r = newson;
		increment_parents_heights(newson, cur);
		if (newson == NULL)
			return (NULL);
		return (rebalance_node(cur));
	}
	qprintf("buildcase >\n");
	newson = build_cur(s, new, status, cur->r);
	if (newson == NULL)
		return (NULL);
	return (rebalance_node(cur));
}

int					fts_insert(t_ftset *s, t_ftset_node const *node
								, t_ftset_insertion *status)
{
	SETNODE		*head;

	if (s->size == 0)
		head = gen_node(s, NULL, node, status);
	else
		head = build_cur(s, node, status, s->head);
	if (head == NULL)
		return (ENOMEM);
	s->head = head;
	s->height = head->height;
	return (0);
}
