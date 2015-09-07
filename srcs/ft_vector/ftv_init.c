/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftv_init.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/06/03 18:25:20 by ngoguey           #+#    #+#             */
/*   Updated: 2015/07/20 14:48:34 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_vector.h"
#include <errno.h>
#include <stdlib.h>

int					ftv_init_instance(t_ftvector *v, size_t chunk_size)
{
	v->data = malloc(chunk_size * FT_VECTOR_DEFAULT_CAPACITY);
	if (v->data == NULL)
		return (ENOMEM);
	v->size = 0;
	v->chunk_size = chunk_size;
	v->capacity = FT_VECTOR_DEFAULT_CAPACITY;
	return (0);
}

t_ftvector			*ftv_init_alloc(size_t chunk_size)
{
	t_ftvector	*ret;

	ret = malloc(sizeof(t_ftvector));
	if (ret == NULL)
		return (NULL);
	if (ftv_init_instance(ret, chunk_size))
	{
		free(ret);
		return (NULL);
	}
	return (ret);
}

t_ftvector			ftv_uninitialized(void)
{
	return ((t_ftvector){NULL, 0, 0, 0});
}

int					ftv_copy(t_ftvector *dst, t_ftvector const *src)
{
	dst->data = ft_memdup(src->data, src->size * src->chunk_size);
	if (dst->data == NULL)
		return (ENOMEM);
	dst->chunk_size = src->chunk_size;
	dst->size = src->size;
	dst->capacity = src->size;
	return (0);
}
