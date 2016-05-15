/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftwarning.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/02/26 14:39:36 by ngoguey           #+#    #+#             */
/*   Updated: 2016/02/26 14:47:02 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "fterror.h"
#include <stdlib.h>
#include <stdarg.h>
#include <errno.h>

#ifdef LIBFT_INTERNAL_USE_STD
# include <stdio.h>
# include <string.h>
#endif

int				fte_warn(char const *strings[3], int line, ...)
{
	va_list		ap;

	LFT_DPTF(2, "\033[33mWarning\033[31m[\033[0m%26s:%-3d\033[31m]: \033[0m",
				strings[1], line);
	va_start(ap, line);
	LFT_VDPTF(2, strings[2], ap);
	va_end(ap);
	LFT_FFLUSH(stderr);
	ft_putchar_fd('\n', 2);
	return (0);
}

int				fte_warnno(char const *strings[3], int line, ...)
{
	int const	err = errno;
	va_list		ap;

	LFT_DPTF(2, "\033[33mWarning\033[31m[\033[0m%26s:%-3d\033[31m]: \033[0m",
				strings[1], line);
	va_start(ap, line);
	LFT_DPTF(2, strings[2], ap);
	va_end(ap);
	LFT_FFLUSH(stderr);
	LFT_DPTF(2, "\033[31m(\033[0m%s\033[31m)\033[0m\n", LFT_STRERROR(err));
	return (0);
}
