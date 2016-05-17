/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   endianness.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/02/07 15:03:34 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/17 11:31:34 by Ngo              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#ifdef __MINGW64__
# include <sys/param.h>
#else
# include <i386/endian.h>
#endif

uint16_t	ft_i16toh(uint16_t i, bool big_endian)
{
	if (BYTE_ORDER == LITTLE_ENDIAN)
	{
		if (big_endian)
			return ((i & 0xff00) >> 8 | (i & 0x00ff) << 8);
		else
			return (i);
	}
	if (big_endian)
		return (i);
	else
		return ((i & 0xff00) >> 8 | (i & 0x00ff) << 8);
}

uint32_t	ft_i32toh(uint32_t i, bool big_endian)
{
	if (BYTE_ORDER == LITTLE_ENDIAN)
	{
		if (big_endian)
			return (((i & 0xff000000) >> 24) | ((i & 0x00ff0000) >> 8) |
					((i & 0x0000ff00) << 8) | ((i & 0x000000ff) << 24));
		else
			return (i);
	}
	if (big_endian)
		return (i);
	else
		return (((i & 0xff000000) >> 24) | ((i & 0x00ff0000) >> 8) |
				((i & 0x0000ff00) << 8) | ((i & 0x000000ff) << 24));
}

uint64_t	ft_i64toh(uint64_t i, bool big_endian)
{
	if (BYTE_ORDER == LITTLE_ENDIAN)
	{
		if (big_endian)
			return (((i & 0xff00000000000000ULL) >> 56) |
					((i & 0x00ff000000000000ULL) >> 40) |
					((i & 0x0000ff0000000000ULL) >> 24) |
					((i & 0x000000ff00000000ULL) >> 8) |
					((i & 0x00000000ff000000ULL) << 8) |
					((i & 0x0000000000ff0000ULL) << 24) |
					((i & 0x000000000000ff00ULL) << 40) |
					((i & 0x00000000000000ffULL) << 56));
		else
			return (i);
	}
	if (big_endian)
		return (i);
	else
		return (((i & 0xff00000000000000ULL) >> 56) |
				((i & 0x00ff000000000000ULL) >> 40) |
				((i & 0x0000ff0000000000ULL) >> 24) |
				((i & 0x000000ff00000000ULL) >> 8) |
				((i & 0x00000000ff000000ULL) << 8) |
				((i & 0x0000000000ff0000ULL) << 24) |
				((i & 0x000000000000ff00ULL) << 40) |
				((i & 0x00000000000000ffULL) << 56));
}

void		ft_uint_reorder(void *ptr, size_t size, bool big_endian)
{
	if (size == 2)
		*(uint16_t*)ptr = ft_i16toh(*(uint16_t*)ptr, big_endian);
	else if (size == 4)
		*(uint32_t*)ptr = ft_i32toh(*(uint32_t*)ptr, big_endian);
	else if (size == 8)
		*(uint64_t*)ptr = ft_i64toh(*(uint64_t*)ptr, big_endian);
	return ;
}
