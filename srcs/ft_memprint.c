/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memprint.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 19:47:05 by ngoguey           #+#    #+#             */
/*   Updated: 2014/11/03 20:09:56 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "libft.h"

static void	prnt_linestart(t_byte *b)
{
	char		str[9];

	ft_lutoa(ft_getptri(b), str, 16);
	ft_putnchar('0', 8 - ft_strlen(str));
	ft_putstr(str);
	ft_putchar(':');
}

static void	prnt_lineend(void *b, int i)
{
	char	*s;

	i %= 16;
	s = b - i;
	ft_putnchar(' ', (15 - i) * 2 + (15 - i) / 2);
	ft_putstr("  ");
	while (i-- >= 0)
	{
		if (ft_isprint(*s))
			ft_putchar(*s);
		else
			ft_putchar('.');
		s++;
	}
	ft_putchar('\n');
}

void		*ft_memprint(void *p, size_t s)
{
	int		i;
	t_byte	*b;

	b = (t_byte*)p;
	i = 0;
	while (s-- > 0)
	{
		if (i % 16 == 0)
			prnt_linestart(b);
		if (i % 2 == 0)
			ft_putchar(' ');
		if (*b <= 0xf)
			ft_putchar('0');
		ft_putnbr_base((int)*b, 16);
		if (i % 16 == 15 || !s)
			prnt_lineend((void*)b, i);
		b++;
		i++;
	}
	return (p);
}
