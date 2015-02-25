/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printt.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/25 06:28:10 by ngoguey           #+#    #+#             */
/*   Updated: 2015/02/25 07:01:30 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include <ft_debug.h>

static int	find_index(char tab[100][2][50], const char *f, int line)
{
	int		i;
	char	l[50];

	ft_itoa_c(line, l, 10);
	i = 0;
	while (*tab[i][0] != '\0' && i < 100)
	{
		if (ft_strnequ(f, tab[i][0], 49) && ft_strnequ(l, tab[i][1], 49))
			return (i);
		i++;
	}
	if (i >= 100)
		return (-1);
	ft_strlcpy(tab[i][0], f, 50);
	ft_strlcpy(tab[i][1], l, 50);
	return (i);
}

void		ft_printt(const char *fi, const char *fu, int l)
{
	static char	saves[100][2][50];
	static int	counter[100];
	static int	init = 0;
	int			i;

	if (!init)
	{
		ft_bzero(saves, sizeof(saves));
		ft_bzero(counter, sizeof(saves));
		init = 1;
	}
	i = find_index(saves, fi, l);
	if (i < 0)
		return ;
	counter[i]++;
	qprintf("#%-2d \033[%dm(%d)%s\033[0m\n",
		counter[i], 31 + (i + 0) % 6, l, fu);
	return ;
}
