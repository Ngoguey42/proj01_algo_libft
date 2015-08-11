
#include "ft_set.h"
#include "ft_debug.h" //debug

static t_ftset_node	*leftmost(t_ftset_node *node)
{
	while (node->l != NULL)
		node = node->l;
	return (node);
}

t_ftset_node		*fts_begin(t_ftset *set)
{
	if (set->head != NULL)
		return (leftmost(set->head));
	return (NULL);
}

static t_ftset_node	*first_topright_parent(t_ftset_node *node)
{
	while (1)
	{
		if (node->parent == NULL)
			return (NULL);
		else if (node->parent->l == node)
			return (node->parent);
		node = node->parent;
	}
	return ((void*)42);
}

t_ftset_node		*fts_next(t_ftset_node *node)
{
	if (node->r != NULL)
		return (leftmost(node->r));
	return (first_topright_parent(node));
}
