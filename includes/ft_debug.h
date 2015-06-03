/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_debug.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/12/01 12:00:09 by ngoguey           #+#    #+#             */
/*   Updated: 2015/06/03 15:31:47 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_DEBUG_H
# define FT_DEBUG_H

# include "ft_typedefs.h"

void	ft_printvar(char s[3][50], void *ptr, int line);
void	ft_printt(const char *fi, const char *fu, int l);

# define D(T, A) ft_printvar((char[][50]){#T, #A, __FILE__}, (T*)&A, __LINE__)
# define T ft_printt(__FILE__, __FUNCTION__, __LINE__)
# define PEACE(A1, A2) A1 A2; (void)A2

int		qprintf(const char *format, ...);

#endif
