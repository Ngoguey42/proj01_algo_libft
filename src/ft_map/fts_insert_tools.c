/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftm_insert_tools.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/12 13:42:56 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 11:44:47 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "ft_map.h"
#include <errno.h>

void			ftm_increment_parents_heights(t_ftmap_node const *son
												, t_ftmap_node *parent)
{
	t_ftmap_node const	*brother;

	while (parent != NULL)
	{
		if (parent->l == son)
			brother = parent->r;
		else
			brother = parent->l;
		if (brother != NULL && brother->height >= son->height)
			return ;
		parent->height = son->height + 1;
		son = parent;
		parent = parent->parent;
	}
	return ;
}

t_ftmap_node	*ftm_gen_node(t_ftmap *s
								, t_ftmap_node *parent
								, t_ftmap_node const *new
								, t_ftmap_insertion *status)
{
	t_ftmap_node		*anode;

	anode = ft_memdup(new, s->chunk_size);
	if (anode == NULL)
		return (NULL);
	anode->height = 1;
	anode->l = NULL;
	anode->r = NULL;
	anode->parent = parent;
	s->size++;
	if (status != NULL)
	{
		status->ptr = anode;
		status->inserted = true;
	}
	return (anode);
}
