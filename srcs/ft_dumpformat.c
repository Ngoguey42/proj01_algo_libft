/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_dumpformat.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/02/23 13:54:34 by ngoguey           #+#    #+#             */
/*   Updated: 2016/02/23 15:22:03 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "ft_debug.h"
#include "fterror.h"

#include <unistd.h>

/*
**	'ftv_print'		format:
**					i(int)		I(skip int)
**					f(float)	F(skip float)
**					z(size_t)	Z(skip size_t)
**					s(str)		S(skip str)
**					p(ptr)		P(skip ptr)
**					c(char)		C(skip char)
**					u(uint)		U(skip uint)
**					d(double)	D(skip double)
**					t(short)	T(skip short)
*/

#define ENTRY(FMT, T, FP) (t_dumpformat_internal){FMT, sizeof(T), FP}

static t_dumpformat_internal const	tokens[] = {
	['i'] = ENTRY("(%i)", int, false),
	['f'] = ENTRY("%5.2f", float, true),
	['z'] = ENTRY("#%zu", size_t, false),
	['s'] = ENTRY("\"%s\"", char*, false),
	['p'] = ENTRY("%p", void*, false),
	['c'] = ENTRY("'%c'", char, false),
	['u'] = ENTRY("(%u)", unsigned int, false),
	['d'] = ENTRY("%5.2f", double, true),
	['t'] = ENTRY("%hd", short, false),
};

static void		dump(void const *p, t_dumpformat_internal const *info)
{
	if (info->isfp)
	{
		if (info->size == 4)
			qprintf(info->fmt, *(float const*)p);
		else
			qprintf(info->fmt, *(double const*)p);
	}
	else if (info->size == 1)
		qprintf(info->fmt, *(uint8_t const*)p);
	else if (info->size == 2)
		qprintf(info->fmt, *(uint16_t const*)p);
	else if (info->size == 4)
		qprintf(info->fmt, *(uint32_t const*)p);
	else
		qprintf(info->fmt, *(uint64_t const*)p);
	return ;
}

static int		exec_format(void const *p, size_t *of, char tk)
{
	char const					low = ft_tolower(tk);
	t_dumpformat_internal const	*info;

	info = tokens + (size_t)low;
	if ((void*)info >= END_ARRAY(tokens) || info->fmt == NULL)
		return (ERRORF("Unknown token '%c'", tk));
	*of += (info->size - *of % info->size) % info->size;
	if (low == tk)
		dump(p + *of, info);
	*of += info->size;
	return (0);
}

void			ft_dumpformat(void const *datptr, char const *fmt)
{
	size_t		offset[1];
	char		c;

	*offset = 0;
	while (1)
	{
		c = *fmt;
		exec_format(datptr, offset, c);
		fmt++;
		if (*fmt == '\0')
			break ;
		else if (ft_islower(c))
			write(2, ", ", 2);
	}
	write(2, "\n", 1);
	return ;
}
