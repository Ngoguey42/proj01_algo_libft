/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_utoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 19:28:36 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 11:45:11 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_utoa(uint32_t value, char *str, int base)
{
	char	*save;
	int		i;

	if (base > 36 || base < 2 || !(save = str))
		return (NULL);
	if (value == 0)
		*(str++) = '0';
	i = 0;
	while (value != 0)
	{
		str[i++] = BASE_NBRS[value % base];
		value /= base;
	}
	str[i] = '\0';
	ft_revstr(str);
	return (save);
}
