/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printt.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/25 06:28:10 by ngoguey           #+#    #+#             */
/*   Updated: 2015/06/04 15:30:40 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "ft_debug.h"

static t_debugdatas			g_debug_datas = {
	{NULL, 0, 0, 0}, false, true
};

char const					*g_debug_colors[] = {
	"\033[45;34m",
	"\033[46;35m",
	"\033[44;37m",
	"\033[42;30m",
	"\033[43;31m",
	"\033[41;36m"
};

static void	print_line(int gid)
{
	t_debugline const	*l = ((t_debugline*)g_debug_datas.lines.data) + gid;

	lprintf("%s%d %3d(%-3d) %3d:%s\033[0m", g_debug_colors[gid % 6], gid,
			l->logcount, l->count, l->line, l->func);
	return ;
}

static void	new_line(const char *file, const char *func, int line)
{
	t_debugline		tmp;

	tmp.gid = g_debug_datas.lines.size;
	tmp.count = 0;
	tmp.logcount = 0;
	tmp.line = line;
	ft_strlcpy(tmp.func, func, 64);
	ft_strlcpy(tmp.file, file, 64);
	ftv_push_back(&g_debug_datas.lines, (void*)&tmp);
	return ;
}

void		ft_printt(const char *file, const char *func, int line)
{
	size_t			i;
	t_debugline		*l;

	if (!g_debug_datas.init)
	{
		ftv_init_instance(&g_debug_datas.lines, sizeof(t_debugline));
		g_debug_datas.init = true;
	}
	i = 0;
	while (i < g_debug_datas.lines.size)
	{
		l = ((t_debugline*)g_debug_datas.lines.data) + i;
		if (ft_strnequ(file, l->file, 63) && line == l->line)
		{
			l->count++;
			l->logcount++;
			break ;
		}
		i++;
	}
	if (i == g_debug_datas.lines.size)
		new_line(file, func, line);
	if (g_debug_datas.print)
		print_line(i);
	return ;
}
