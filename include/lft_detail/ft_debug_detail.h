/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_debug_detail.h                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/16 09:21:56 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 10:38:23 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_DEBUG_DETAIL_H
# define FT_DEBUG_DETAIL_H

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
	bool			init;
	bool			print;
}					t_debugdatas;

typedef struct		s_dumpformat_internal
{
	char const		*fmt;
	uint32_t		size;
	bool			isfp;
}					t_dumpformat_internal;

t_debugdatas		*dbg_instance(void);
void				dbg_printline(size_t gid);

#endif
