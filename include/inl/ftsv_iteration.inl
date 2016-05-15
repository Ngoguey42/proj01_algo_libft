/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftsv_iteration.inl                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/15 15:31:58 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/15 16:00:18 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FTSV_ITERATION_INL
# define FTSV_ITERATION_INL

# include "ft_string_oop_structs.h"

inline char const	*ftsv_rbegin(t_ftstrv const *sv)
{
	return (sv->data + sv->size - 1);
}

inline char const	*ftsv_end(t_ftstrv const *sv)
{
	return (sv->data + sv->size);
}

inline char const	*ftsv_rend(t_ftstrv const *sv)
{
	return (sv->data - 1);
}

#endif
