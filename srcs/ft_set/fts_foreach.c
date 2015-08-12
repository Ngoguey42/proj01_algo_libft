/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fts_foreach.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/12 15:03:38 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/12 15:11:25 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_set.h"

void				fts_foreach(t_ftset const *s, void (*fun)(), void *ext)
{
	t_ftset_node            *node;

	node = fts_begin((t_ftset*)s); //dirtycast
	while (node != NULL)
	{
		fun(ext, node);
		node = fts_next(node);
	}
	return ;
}

void				fts_foreachi(t_ftset const *s, void (*fun)(), void *ext)
{
	t_ftset_node            *node;
	int						i;

	i = 0;
	node = fts_begin((t_ftset*)s); //dirtycast
	while (node != NULL)
	{
		fun(ext, node, i++);
		node = fts_next(node);
	}
	return ;
}
