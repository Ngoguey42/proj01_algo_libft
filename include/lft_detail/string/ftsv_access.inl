/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftsv_access.inl                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/15 15:38:17 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 10:02:11 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FTSV_ACCESS_INL
# define FTSV_ACCESS_INL

# include "lft_detail/string/fts_structs.h"

inline char ftsv_back(t_ftstrv const *sv)
{
	return (sv->data[sv->size - 1]);
}

#endif
