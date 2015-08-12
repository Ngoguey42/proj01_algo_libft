/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_containers_conversions.c                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/12 15:43:20 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/12 15:57:14 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_containers.h"
#include <errno.h>

int			ft_set_to_vector(t_ftset const *s, t_ftvector *v
								, void (*cpy)(), void *ext)
{
	t_ftset_node		*node;
	t_byte				buf[v->chunk_size];

	if (ftv_reserve(v, s->size))
		return (ENOMEM);
	node = fts_begin((t_ftset*)s); //dirty cast
	while (node)
	{
		cpy((void*)buf, node, ext);
		ftv_push_back_unsafe(v, buf);
		node = fts_next(node);
	}
	return (0);
}
