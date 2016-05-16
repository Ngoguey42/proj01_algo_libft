/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_string_intf.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/16 10:55:03 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 11:30:23 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_STRING_INTF_H
# define FT_STRING_INTF_H

# include <stddef.h>
# include <stdbool.h>
# include <stdint.h>

/*
** Invariants:
**   - t_ftstr must have the same field as t_ftstrv, same names, same offsets
*/

typedef struct			s_ftstrv
{
	char const			*data;
	size_t				size;
}						t_ftstrv;

typedef struct			s_ftstr
{
	char				*data;
	size_t				size;
	size_t				capacity;
}						t_ftstr;

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
**   - no specific destruction required
**   - copies with operator equal
**   - construction from t_ftstr range as ftstr_substr
*/

static t_ftstrv			ftsv_empty(void);
static t_ftstrv			ftsv_of_cstr(char const *str);
static t_ftstrv			ftsv_of_mem(char const *ptr, size_t size);
# define FTSV_OF_LITERAL(S) (t_ftstrv){.data = (S), .size = sizeof((S)) - 1}

/*
** -= Iteration =- TODO: look ocaml and <algorithm>
**   - begin() with field access
*/

static char const		*ftsv_rbegin(t_ftstrv const *sv);
static char const		*ftsv_end(t_ftstrv const *sv);
static char const		*ftsv_rend(t_ftstrv const *sv);

/*
** -= Element access =-
**   - char ftsv_access(t_ftstrv const*)
**   - at() with field access
**   - front() with field access
**   - data() with field access
*/

static char				ftsv_back(t_ftstrv const *sv);

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
