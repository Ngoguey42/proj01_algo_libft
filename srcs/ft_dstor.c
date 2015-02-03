/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_dstor.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/03 06:46:36 by ngoguey           #+#    #+#             */
/*   Updated: 2015/02/03 07:00:47 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <errno.h>
#include "ft_math.h"
#include "libft.h"

int			ft_dstor_realloc(t_dstor *dstor, size_t new_size)
{
	DSTOR_T	*buf_new;

	buf_new = (DSTOR_T*)malloc(new_size * sizeof(DSTOR_T));
	if (buf_new == NULL)
		return (ENOMEM);
	dstor->zone_size = MIN(new_size, dstor->zone_size);
	(void)ft_memcpy(buf_new, dstor->buf_rear, dstor->zone_size);
	free(dstor->buf_rear);
	dstor->buf_rear = buf_new;
	dstor->buf_size = new_size;
	if (dstor->zone_size == 0)
		dstor->zone_front = NULL;
	else
		dstor->zone_front = dstor->buf_rear + dstor->zone_size - 1;
	if (dstor->zone_front)
		(void)ft_bzero(dstor->zone_front + 1, );
	return (0);
}
