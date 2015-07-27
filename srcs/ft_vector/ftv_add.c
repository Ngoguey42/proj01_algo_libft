/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftv_add.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/07/27 09:25:31 by ngoguey           #+#    #+#             */
/*   Updated: 2015/07/27 09:50:10 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_vector.h"

#ifdef LIBFT_INTERNAL_USE_STD
# include <string.h>
# include <stdlib.h>
#endif
#include <errno.h>

int			ftv_push_back(t_ftvector *v, void const *ptr)
{
	if (v->size >= v->capacity)
	{
		v->capacity = v->size * 2;
		v->data = LIBFT_REALLOC(v->data, v->size * v->chunk_size,
								v->capacity * v->chunk_size);
		if (v->data == NULL)
			return (ENOMEM);
	}
	LIBFT_MEMCPY(v->data + v->size * v->chunk_size, ptr, v->chunk_size);
	v->size++;
	return (0);
}

void		ftv_push_back_unsafe(t_ftvector *v, void const *ptr)
{
	LIBFT_MEMCPY(v->data + v->size * v->chunk_size, ptr, v->chunk_size);
	v->size++;
	return ;
}

int			ftv_insert_range(t_ftvector *v, void const *ptr, size_t count)
{
	size_t const	new_size = v->size + count;

	if (new_size > v->capacity)
	{
		while (v->capacity < new_size)
			v->capacity *= 2;
		v->data = LIBFT_REALLOC(v->data, v->size * v->chunk_size,
								v->capacity * v->chunk_size);
		if (v->data == NULL)
			return (ENOMEM);
	}
	LIBFT_MEMCPY(v->data + v->size * v->chunk_size, ptr, count * v->chunk_size);
	v->size = new_size;
	return (0);
}

int			ftv_insert_count(t_ftvector *v, void const *ref, size_t count)
{
	size_t		i;
	void		*dptr;

	if (v->size + count > v->capacity)
	{
		while (v->capacity < v->size + count)
			v->capacity *= 2;
		v->data = LIBFT_REALLOC(v->data, v->size * v->chunk_size,
								v->capacity * v->chunk_size);
		if (v->data == NULL)
			return (ENOMEM);
	}
	i = 0;
	dptr = v->data + v->size * v->chunk_size;
	while (i < v->size)
	{
		LIBFT_MEMCPY(dptr, ref, v->chunk_size);
		dptr += v->chunk_size;
		i++;
	}
	v->size += count;
	return (0);
}
