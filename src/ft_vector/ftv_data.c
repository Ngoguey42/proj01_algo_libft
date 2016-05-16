/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftv_data.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/06/04 11:31:39 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 13:10:11 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_vector.h"
#include "libft.h"
#include <errno.h>

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
