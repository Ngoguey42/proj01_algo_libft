/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_abs.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/02/06 12:10:39 by ngoguey           #+#    #+#             */
/*   Updated: 2016/02/06 12:10:40 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int				ft_abs(int x)
{
	return (x < 0 ? -x : x);
}

float			ft_fabs(float x)
{
	return (x < 0 ? -x : x);
}
