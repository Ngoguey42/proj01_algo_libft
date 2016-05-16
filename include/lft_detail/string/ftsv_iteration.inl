/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftsv_iteration.inl                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/15 15:31:58 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 11:20:57 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FTSV_ITERATION_INL
# define FTSV_ITERATION_INL

# include "lft_detail/string/ft_string_intf.h"

static inline char const	*ftsv_rbegin(t_ftstrv const *sv)
{
	return (sv->data + sv->size - 1);
}

static inline char const	*ftsv_end(t_ftstrv const *sv)
{
	return (sv->data + sv->size);
}

static inline char const	*ftsv_rend(t_ftstrv const *sv)
{
	return (sv->data - 1);
}

#endif
