/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_debug.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/12/01 12:00:09 by ngoguey           #+#    #+#             */
/*   Updated: 2015/06/04 15:26:56 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_DEBUG_H
# define FT_DEBUG_H

# include "ft_typedefs.h"
# include "ft_vector.h"

typedef struct		s_debugline
{
	int				gid;
	int				count;
	int				logcount;
	int				line;
	char			func[64];
	char			file[64];
}					t_debugline;

typedef struct		s_debugdatas
{
	t_ftvector		lines;
	t_bool			init;
	t_bool			print;
}					t_debugdatas;

void				ft_printt(const char *file, const char *func, int line);

# define T ft_printt(__FILE__, __FUNCTION__, __LINE__)

int					qprintf(const char *format, ...);
int					lprintf(const char *format, ...);

#endif
