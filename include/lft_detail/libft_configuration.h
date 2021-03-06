/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_configuration.h                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/15 14:14:29 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 10:38:42 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_CONFIGURATION_H
# define LIBFT_CONFIGURATION_H

/*
** Internal policy regarding standard library
**  any debug function may use std libs (including qprintf)
**  any other generic function must use (libft) or (LFT_* macroes)
*/

/*
**# define LIBFT_INTERNAL_USE_STD
*/

# ifdef LIBFT_INTERNAL_USE_STD

#  include <string.h>
#  include <stdio.h>
#  include <stdlib.h>

#  define LIBFT_REALLOC(ptr, olds, news)    realloc((ptr), (news))
#  define LIBFT_MEMCPY                      memcpy
#  define LIBFT_MEMCMP                      memcmp
#  define LFT_PTF                           printf
#  define LFT_DPTF                          dprintf
#  define LFT_VPTF                          vprintf
#  define LFT_VDPTF                         vdprintf
#  define LFT_FFLUSH(ARG)                   fflush((ARG))
#  define LFT_STRERROR                      strerror
#  define LFT_EXIT(ARG)                     exit((ARG))
#  define LFT_STRLEN						strlen

# else

#  define LIBFT_REALLOC(ptr, olds, news)    ft_realloc((ptr), (olds), (news))
#  define LIBFT_MEMCPY                      ft_memcpy
#  define LIBFT_MEMCMP                      ft_memcmp
#  define LFT_PTF                           ft_printf
#  define LFT_DPTF                          ft_dprintf
#  define LFT_VPTF                          ft_vprintf
#  define LFT_VDPTF                         ft_vdprintf
#  define LFT_FFLUSH(ARG)
#  define LFT_STRERROR                      ft_strerror
#  define LFT_EXIT(ARG)     ft_putendl_fd("Exit should not be used!", 2)
#  define LFT_STRLEN						ft_strlen

# endif

#endif
