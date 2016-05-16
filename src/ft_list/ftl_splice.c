/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftl_splice.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/16 12:34:24 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 11:41:12 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_list.h"
#include "ft_error.h"
#include <stdlib.h>

static void	del(t_ftlist_node *prev, t_ftlist_node *next)
{
	next->prev = prev;
	prev->next = next;
	return ;
}

static void	add(t_ftlist_node *new, t_ftlist_node *prev, t_ftlist_node *next)
{
	next->prev = new;
	new->next = next;
	new->prev = prev;
	prev->next = new;
	return ;
}

void		ftl_splice_one_back(
	t_ftlist *dst, t_ftlist *src, t_ftlist_node *node)
{
	t_ftlist_node	*next;

	FT_ASSERT(dst->chunk_size == src->chunk_size);
	src->size--;
	dst->size++;
	del(node->prev, node->next);
	next = dst->prev;
	add(node, next->prev, next);
	return ;
}
