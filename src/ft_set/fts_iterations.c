/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftm_iterations.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/12 10:34:41 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/12 12:54:03 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_set.h"

static t_ftmap_node	*leftmost(t_ftmap_node *node)
{
	while (node->l != NULL)
		node = node->l;
	return (node);
}

t_ftmap_node		*ftm_begin(t_ftmap *set)
{
	if (set->head != NULL)
		return (leftmost(set->head));
	return (NULL);
}

static t_ftmap_node	*first_topright_parent(t_ftmap_node *node)
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

t_ftmap_node		*ftm_next(t_ftmap_node *node)
{
	if (node->r != NULL)
		return (leftmost(node->r));
	return (first_topright_parent(node));
}
