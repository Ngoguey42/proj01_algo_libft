/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftm_insert.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/12 10:34:30 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 11:44:29 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_map.h"
#include "lft_detail/ft_map_detail.h"
#include <errno.h>

#define NORM_AT_42_IS_WTF s->cmp

static t_ftmap_node	*build_left(t_ftmap *const s
							, t_ftmap_node const *const new
							, t_ftmap_insertion *const status
							, t_ftmap_node *const cur)
{
	t_ftmap_node	*newson;

	if (cur->l == NULL)
	{
		newson = ftm_gen_node(s, cur, new, status);
		cur->l = newson;
		ftm_increment_parents_heights(newson, cur);
	}
	else
	{
		newson = ftm_build_cur(s, new, status, cur->l);
	}
	if (newson == NULL)
		return (NULL);
	return (ftm_rebalance_node(cur));
}

static t_ftmap_node	*build_right(t_ftmap *const s
							, t_ftmap_node const *const new
							, t_ftmap_insertion *const status
							, t_ftmap_node *const cur)
{
	t_ftmap_node	*newson;

	if (cur->r == NULL)
	{
		newson = ftm_gen_node(s, cur, new, status);
		cur->r = newson;
		ftm_increment_parents_heights(newson, cur);
	}
	else
	{
		newson = ftm_build_cur(s, new, status, cur->r);
	}
	if (newson == NULL)
		return (NULL);
	return (ftm_rebalance_node(cur));
}

t_ftmap_node			*ftm_build_cur(t_ftmap *const s
								, t_ftmap_node const *const new
								, t_ftmap_insertion *const status
								, t_ftmap_node *const cur)
{
	int const		cmp = NORM_AT_42_IS_WTF(cur, new, s);

	if (cmp < 0)
		return (build_left(s, new, status, cur));
	else if (cmp > 0)
		return (build_right(s, new, status, cur));
	if (status != NULL)
		*status = (t_ftmap_insertion){cur, false};
	return (cur);
}

int				ftm_insert(t_ftmap *s, t_ftmap_node const *node
								, t_ftmap_insertion *status)
{
	t_ftmap_node		*head;

	if (s->size == 0)
		head = ftm_gen_node(s, NULL, node, status);
	else
		head = ftm_build_cur(s, node, status, s->head);
	if (head == NULL)
		return (ENOMEM);
	s->head = head;
	s->height = head->height;
	return (0);
}
