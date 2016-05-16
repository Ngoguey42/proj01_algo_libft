/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftsv_iteration.inl                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/15 15:31:58 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 12:22:27 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FTSV_ITERATION_INL
# define FTSV_ITERATION_INL

# include "lft_detail/string/ft_string_intf.h"

static inline char const	*ftsv_rbegin(t_ftstrv sv)
{
	return (sv->data + sv->size - 1);
}

static inline char const	*ftsv_end(t_ftstrv sv)
{
	return (sv->data + sv->size);
}

static inline char const	*ftsv_rend(t_ftstrv v)
{
	return (sv->data - 1);
}

/* static inline char const    *fts_end(t_ftstr const *s) */
/* { */
/* 	return ftsv_end(*(t_ftstrv const*)s); */
/* } */


/* int					main(t_ftstrv sv) */
/* { */

/* 	/\* char const *it = sv.data; *\/ */
/* 	t_ftstrv it = sv; */
/* 	size_t s; */

/* 	while (it < ftsv_end(it)) */
/* 	{ */
/* 		/\* work *\/ */



/* 		s = ftsv_find_first_of(sv, 0, " \t\n"); */
/* 		s = ftsv_find_first_not_of(sv, s, " \t\n"); */



/* 		/\* it++; *\/ */

/* 		/\* it.data++; *\/ */
/* 		/\* it.size-- *\/ */
/* 	} */

/* 	return (0); */
/* } */
#endif
