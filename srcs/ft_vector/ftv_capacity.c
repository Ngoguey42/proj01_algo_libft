/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftv_capacity.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/06/03 18:37:27 by ngoguey           #+#    #+#             */
/*   Updated: 2015/07/27 09:17:45 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_vector.h"

#ifdef LIBFT_INTERNAL_USE_STD
# include <stdlib.h>
#endif
#include <errno.h>

int					ftv_reserve(t_ftvector *v, size_t newcapacity)
{
	v->data = LIBFT_REALLOC(v->data, v->size * v->chunk_size,
						newcapacity * v->chunk_size);
	v->capacity = newcapacity;
	if (v->data == NULL)
		return (ENOMEM);
	return (0);
}

int					ftv_shrink_to_fit(t_ftvector *v)
{
	v->data = LIBFT_REALLOC(v->data, v->size * v->chunk_size,
							v->size * v->chunk_size);
	v->capacity = v->size;
	if (v->data == NULL)
		return (ENOMEM);
	return (0);
}
