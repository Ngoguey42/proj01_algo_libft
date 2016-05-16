/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_debug.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/12/01 12:00:09 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 09:22:32 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_DEBUG_H
# define FT_DEBUG_H

# include <stddef.h>
# include <stdbool.h>
# include <stdint.h>

# include <assert.h>

/*
** Public
*/
void		dbg_recap(void);
void		dbg_resetlog(void);
void		dbg_noprint(void);
void		dbg_doprint(void);

int			qprintf(const char *format, ...);
int			lprintf(const char *format, ...);
void		ft_leaks(void);

void		ft_dumpformat(void const *datptr, char const *fmt);

# define T dbg_printt(__FILE__, __FUNCTION__, __LINE__)

/*
** Private
*/
void		dbg_printt(const char *file, const char *func, int line);

#endif
