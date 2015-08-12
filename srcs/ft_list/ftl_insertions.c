/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftl_insertions.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/08 15:58:36 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/12 17:21:15 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <errno.h>
#include "ft_list.h"

#define LISTNODE struct s_ftlist_node

static void	add(LISTNODE *new, LISTNODE *prev, LISTNODE *next)
{
	next->prev = new;
	new->next = next;
	new->prev = prev;
	prev->next = new;
	return ;
}

int			ftl_push_back(t_ftlist *l, LISTNODE const *node)
{
	LISTNODE	*anode;

	anode = ft_memdup(node, l->chunk_size);
	if (anode == NULL)
		return (ENOMEM);
	add(anode, l->prev, (LISTNODE*)l);
	l->size++;
	return (0);
}

int			ftl_push_front(t_ftlist *l, LISTNODE const *node)
{
	LISTNODE	*anode;

	anode = ft_memdup(node, l->chunk_size);
	if (anode == NULL)
		return (ENOMEM);
	add(anode, (LISTNODE*)l, l->next);
	l->size++;
	return (0);
}

int			ftl_insert_pos(t_ftlist *l, LISTNODE *pos, LISTNODE const *node)
{
	LISTNODE	*anode;

	anode = ft_memdup(node, l->chunk_size);
	if (anode == NULL)
		return (ENOMEM);
	add(anode, pos, pos->next);
	l->size++;
	return (0);
}
