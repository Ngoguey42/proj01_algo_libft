/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_islower.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 20:03:54 by ngoguey           #+#    #+#             */
/*   Updated: 2014/11/08 10:16:41 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/*
** 'ft_islower' identifies an ascii lowercase 'char'.
*/

int	ft_islower(int c)
{
	return (c >= 'a' && c <= 'z');
}