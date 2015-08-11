
#include "ft_set.h"
#include "ft_debug.h" //debug
#include <errno.h>

# define SETNODE struct s_ftset_node



#define qprintf(...)


static int			insert_first(t_ftset *s, t_ftset_node const *node
									, t_ftset_insertion *status)
{
	SETNODE		*anode;

	qprintf("buildcase first\n");
	anode = ft_memdup(node, s->chunk_size);
	if (anode == NULL)
		return (ENOMEM);
	anode->height = 0;
	anode->l = NULL;
	anode->r = NULL;
	anode->parent = NULL;
	s->head = anode;
	s->size = 1;
	s->height = 1;
	if (status != NULL)
	{
		status->ptr = anode;
		status->inserted = true;
	}
	// qprintf("set_head: %p\n", s->head);
	return (0);
}

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
	anode->height = 0;
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



static SETNODE		*rebalance_cur(t_ftset_node *const cur
							, t_ftset_node *const left
							, t_ftset_node *const right)
{
	//tmp
	cur->l = left;
	cur->r = right;
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
		return (rebalance_cur(cur, newson, cur->r));
	}
	else if (cmp < 0)
	{
		qprintf("buildcase <\n");
		newson = build_cur(s, new, status, cur->l);
		if (newson == NULL)
			return (NULL);
		return (rebalance_cur(cur, newson, cur->r));
	}
	else if (cmp > 0 && cur->r == NULL)
	{
		qprintf("buildcase >add\n");
		newson = gen_node(s, cur, new, status);
		cur->r = newson;
		increment_parents_heights(newson, cur);
		if (newson == NULL)
			return (NULL);
		return (rebalance_cur(cur, cur->l, newson));
	}
	qprintf("buildcase >\n");
	newson = build_cur(s, new, status, cur->r);
	if (newson == NULL)
		return (NULL);
	return (rebalance_cur(cur, cur->l, newson));
}

int					fts_insert(t_ftset *s, t_ftset_node const *node
								, t_ftset_insertion *status)
{
	SETNODE		*head;

	if (s->size == 0)
		return (insert_first(s, node, status));
	head = build_cur(s, node, status, s->head);
	if (head == NULL)
		return (ENOMEM);
	s->head = head;
	s->height = head->height + 1;
	return (0);
}