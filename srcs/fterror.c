/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fterror.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/10 14:03:59 by ngoguey           #+#    #+#             */
/*   Updated: 2016/02/06 12:24:01 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "fterror.h"
#include "ft_debug.h"
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <errno.h>
#include <string.h>

void			ft_enomem(void)
{
	ft_putendl_fd("\033[31mError\033[0m: ENOMEM", 2);
	exit(1);
}

void			fte_assert(bool pred, char const *strings[3], int line)
{
	if (!pred)
	{
		qprintf("\033[31mAssertion failed[\033[0m%s:%d\033[31m]:\033[0m (%s)\n",
				strings[1], line, strings[2]);
		exit(1);
	}
	return ;
}

int				fte_error(char const *strings[3], int line, ...)
{
	va_list		ap;

	fprintf(stderr, "\033[31mError[\033[0m%28s:%-3d\033[31m]: \033[0m",
				strings[1], line);
	va_start(ap, line);
	vfprintf(stderr, strings[2], ap);
	va_end(ap);
	fflush(stderr);
	ft_putendl_fd("", 2);
	return (1);
}

int				fte_errorno(char const *strings[3], int line, ...)
{
	int const	err = errno;
	va_list		ap;

	fprintf(stderr, "\033[31mError[\033[0m%28s:%-3d\033[31m]: \033[0m",
				strings[1], line);
	va_start(ap, line);
	vfprintf(stderr, strings[2], ap);
	va_end(ap);
	fflush(stderr);
	fprintf(stderr, "\033[31m(\033[0m%s\033[31m)\033[0m\n", strerror(err));
	return (1);
}
