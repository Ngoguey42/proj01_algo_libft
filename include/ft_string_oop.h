/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_string_oop.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/15 14:07:54 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/15 15:50:07 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_STRING_OOP_H
# define FT_STRING_OOP_H

# include <stddef.h>

# include "libft_configuration.h"

/*
** Invariants:
**   - t_ftstr must have the same field as t_ftstrv, same names, same offsets
*/

# include "ft_string_oop_structs.h"

/*
** ************************************************************************** **
** --== ftsv_ aka ft-string-view ==--
** Ideas:
**   - match c++17's standard lib as close as possible
**   - add some clever utility functions from OCaml's standard lib
**   - implement everything as inline functions, prototypes in comment
**   - keep fields public, no trivial accessors/setters
**   - all comments in this file (ft_string_oop)
**   - all .inl files remain standalone includables
** Invariants:
**   - data = NULL and size = 0 when empty
**   - if empty, functions behavior undefined
**   - interval might contain '\0's
**   - there is no guarantee that (.data + .size) points to a (valid) '\0'
*/

/*
** -= Construction =-
**   - t_ftstrv ftsv_empty()
**   - t_ftstrv ftsv_from_cstr(char const *)
**   - t_ftstrv ftsv_from_mem(char const*, size_t)
**   - no specific destruction required
**   - copies with operator equal
**   - construction from t_ftstr range as ftstr_substr
*/

# include "inl/ftsv_construction.inl"
# define FTSV_FROM_LITERAL(S) (t_ftstrv){data = (S), size = sizeof((S)) - 1}

/*
** -= Iteration =- TODO: look ocaml and <algorithm>
**   - char *ftsv_rbegin(t_ftstrv const*);
**   - char *ftsv_end(t_ftstrv const*);
**   - char *ftsv_rend(t_ftstrv const*);
**   - begin() with field access
*/

# include "inl/ftsv_iteration.inl"

/*
** -= Element access =-
**   - char ftsv_access(t_ftstrv const*)
**   - at() with field access
**   - front() with field access
**   - data() with field access
*/

# include "inl/ftsv_access.inl"

/*
** -= Capacity =-
**   - size() with field access
**   - length() with field access
**   - empty() with field access
**   - max_size() not defined
*/

/*
** -= Modifers =-
**   - remove_prefix() with field access
**   - remove_suffix() with field access
**   - swap() not defined
*/

/*
** -= Operations =-
**   - to_string() from ftstr_from_substr
**   - copy() (to char array) not defined
**   - compare() not defined
*/

/*
** ftsv_find_chr
** ftsv_findpos_chr
*/

# define FTSTR_NPOS (-1)

# define FTSTR_FIND_CHR(S, C)


/*
** ************************************************************************** **
** --== ftstr_ aka ft-string ==--
*/



#endif
