/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftl_destruction.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/08 17:37:55 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/08 18:37:19 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <errno.h>
#include <stdlib.h>
#include "ft_list.h"

# define LISTNODE struct s_ftlist_node

static void	del(LISTNODE *prev, LISTNODE *next)
{
	next->prev = prev;
	prev->next = next;
	return ;
}

void		ftl_release(t_ftlist *l, void (*deallocator)())
{
	LISTNODE	*node;
	LISTNODE	*next;

	node = l->next;
	while (node != FTL_END(l))
	{
		next = node->next;
		del(node->prev, next);
		if (deallocator != NULL)
			deallocator(node);
		free(node);
		node = next;
	}
	*l = ftl_uninitialized();
	return ;
}

void		ftl_pop_back(t_ftlist *l, void (*deallocator)())
{
	LISTNODE	*node;

	node = l->prev;
	if (node != FTL_END(l))
	{
		del(node->prev, FTL_CONVNODE(l));
		if (deallocator != NULL)
			deallocator(node);
		free(node);
		l->size--;
	}
	return ;
}

void		ftl_pop_front(t_ftlist *l, void (*deallocator)())
{
	LISTNODE	*node;

	node = l->next;
	if (node != FTL_END(l))
	{
		del(FTL_CONVNODE(l), node->next);
		if (deallocator != NULL)
			deallocator(node);
		free(node);
		l->size--;
	}
	return ;
}
