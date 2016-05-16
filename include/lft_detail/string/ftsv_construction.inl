/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftsv_construction.inl                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/15 15:20:32 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 10:05:46 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FTSV_CONSTRUCTION_INL
# define FTSV_CONSTRUCTION_INL

# include "lft_detail/string/fts_structs.h"
# include "lft_detail/libft_configuration.h"
# include "lft_detail/ftlibc_string.h"

inline t_ftstrv		ftsv_empty(void)
{
	return ((t_ftstrv){.data = NULL, .size = 0});
}

inline t_ftstrv		ftsv_from_cstr(char const *str)
{
	return ((t_ftstrv){.data = str, .size = LFT_STRLEN(str)});
}

inline t_ftstrv		ftsv_from_mem(char const *ptr, size_t size)
{
	return ((t_ftstrv){.data = ptr, .size = size});
}

//TODO: from ftsv_from_str

#endif
