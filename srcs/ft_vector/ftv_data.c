/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftv_data.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/06/04 11:31:39 by ngoguey           #+#    #+#             */
/*   Updated: 2015/07/27 09:18:13 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_vector.h"

#ifdef LIBFT_INTERNAL_USE_STD
# include <string.h>
# include <stdlib.h>
#endif
#include <errno.h>

t_bool		ftv_empty(t_ftvector const *v)
{
	return (v->size == 0);
}

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
	LIBFT_MEMCPY(v->data + v->size * v->chunk_size,
				ptr, v->chunk_size);
	v->size++;
	return (0);
}

int			ftv_push_backn(t_ftvector *v, void const *ptr, size_t count)
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

void		ftv_assign(t_ftvector *v, void const *ref)
{
	size_t		i;

	i = 0;
	while (i < v->size)
	{
		LIBFT_MEMCPY(v->data + i * v->chunk_size,
					ref, v->chunk_size);
		i++;
	}
}

int			ftv_insert(t_ftvector *v, void const *ref, size_t count)
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
		dptr++;
		i++;
	}
	v->size += count;
	return (0);
}
