/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftm_init.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/12 10:34:36 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/12 12:53:44 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_map.h"

void				ftm_init_instance(t_ftmap *s, size_t chunk_size
										, int (*cmp)())
{
	*s = (t_ftmap){NULL, 0, 0, chunk_size, cmp};
	return ;
}

t_ftmap				ftm_uninitialized(void)
{
	return ((t_ftmap){NULL, 0, 0, 0, NULL});
}
