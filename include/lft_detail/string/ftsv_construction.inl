/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftsv_construction.inl                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/15 15:20:32 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 14:30:11 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FTSV_CONSTRUCTION_INL
# define FTSV_CONSTRUCTION_INL

# include "lft_detail/string/ft_string_intf.h"
# include "lft_detail/libft_configuration.h"
# include "lft_detail/ftlibc_string.h"

static inline t_ftstrv	ftsv_empty(void)
{
	return ((t_ftstrv){.data = NULL, .size = 0});
}

static inline t_ftstrv	ftsv_of_cstr(char const *str)
{
	return ((t_ftstrv){.data = str, .size = LFT_STRLEN(str)});
}

static inline t_ftstrv	ftsv_of_mem(char const *ptr, size_t size)
{
	return ((t_ftstrv){.data = ptr, .size = size});
}

static inline t_ftstrv	ftsv_substr(t_ftstrv v, size_t pos, size_t count)
{
	return ((t_ftstrv){.data = v.data + pos, .size = v.size + count});
}

#endif
