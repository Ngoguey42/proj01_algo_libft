/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftm_citerations.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/12 17:26:52 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/12 17:27:47 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_set.h"

static t_ftmap_node const	*leftmost(t_ftmap_node const *node)
{
	while (node->l != NULL)
		node = node->l;
	return (node);
}

t_ftmap_node const			*ftm_cbegin(t_ftmap const *set)
{
	if (set->head != NULL)
		return (leftmost(set->head));
	return (NULL);
}

static t_ftmap_node const	*first_topright_parent(t_ftmap_node const *node)
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

t_ftmap_node const			*ftm_cnext(t_ftmap_node const *node)
{
	if (node->r != NULL)
		return (leftmost(node->r));
	return (first_topright_parent(node));
}
