/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   lprintf.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/06/04 14:10:42 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/17 11:37:16 by Ngo              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdarg.h>
#include <math.h>
#include <unistd.h>
#include "libft.h"

int			lprintf(const char *fmt, ...)
{
	int				ret;
	va_list			ap;
	char			buf[256];

	va_start(ap, fmt);
	vsnprintf(buf, 42, fmt, ap);
	ret = fprintf(stderr, "%s\n", buf);
	va_end(ap);
	fflush(stderr);
	return (ret);
}
