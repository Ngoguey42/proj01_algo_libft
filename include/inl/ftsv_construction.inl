/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftsv_construction.inl                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/15 15:20:32 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/15 16:00:01 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FTSV_CONSTRUCTION_INL
# define FTSV_CONSTRUCTION_INL

# include <stddef.h>

# include "libft_configuration.h"
# include "string.h"
# include "ft_string_oop_structs.h"

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
