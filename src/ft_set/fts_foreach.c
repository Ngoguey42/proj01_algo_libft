/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftm_foreach.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/12 15:03:38 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/12 17:29:22 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_set.h"

void				ftm_foreach(t_ftmap *s, void (*fun)(), void *ext)
{
	t_ftmap_node		*node;

	node = ftm_begin(s);
	while (node != NULL)
	{
		fun(ext, node);
		node = ftm_next(node);
	}
	return ;
}

void				ftm_foreachi(t_ftmap *s, void (*fun)(), void *ext)
{
	t_ftmap_node		*node;
	int					i;

	i = 0;
	node = ftm_begin(s);
	while (node != NULL)
	{
		fun(ext, node, i++);
		node = ftm_next(node);
	}
	return ;
}
