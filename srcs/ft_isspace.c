/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isspace.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 18:28:03 by ngoguey           #+#    #+#             */
/*   Updated: 2014/11/08 10:22:34 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/*
** 'ft_isspace' identifies an ascii space 'char'.
*/

int	ft_isspace(int c)
{
	return (((c >= '\t' && c <= '\r') || c == ' ') * 8);
}
