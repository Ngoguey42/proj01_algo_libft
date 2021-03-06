/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftm_balance_tools.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/12 13:42:28 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 13:25:32 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "ft_map.h"
#include <errno.h>

void			ftm_repair_sons_link(t_ftmap_node *son, t_ftmap_node *parent)
{
	if (son != NULL)
		son->parent = parent;
	return ;
}

void			ftm_repair_node_height(t_ftmap_node *node)
{
	t_ftmap_node const *const		l = node->l;
	t_ftmap_node	const *const	r = node->r;
	int const						rh = r == NULL ? 0 : r->height;
	int const						lh = l == NULL ? 0 : l->height;

	node->height = MAX(rh, lh) + 1;
	return ;
}

void			ftm_repair_parents_link(t_ftmap_node *son, t_ftmap_node *parent
										, t_ftmap_node const *oldson)
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

void			ftm_repair_parents_heights(t_ftmap_node *node)
{
	while (node != NULL)
	{
		ftm_repair_node_height(node);
		node = node->parent;
	}
	return ;
}
