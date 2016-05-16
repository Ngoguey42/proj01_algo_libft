/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_containers_conversions.c                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/12 15:43:20 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 11:35:20 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "ft_containers.h"
#include <errno.h>

int			ft_set_to_vector(t_ftmap const *s, t_ftvector *v
								, void (*cpy)(), void *ext)
{
	t_ftmap_node const	*node;
	t_byte				buf[v->chunk_size];

	if (ftv_reserve(v, s->size))
		return (ENOMEM);
	node = ftm_cbegin(s);
	while (node)
	{
		cpy((void*)buf, node, ext);
		ftv_push_back_unsafe(v, buf);
		node = ftm_cnext(node);
	}
	return (0);
}
