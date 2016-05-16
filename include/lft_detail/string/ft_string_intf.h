/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_string_intf.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/16 10:55:03 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 12:27:27 by ngoguey          ###   ########.fr       */
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
**   - Match c++17's standard lib as close as possible
**   - Add some clever utility functions from OCaml's standard lib
**   - Implement everything as inline functions
**   - Keep fields public, no trivial accessors/setters
**   - All .inl files remain standalone includ-ables
** Invariants:
**   - data = NULL and size = 0 when empty
**   - If empty, functions behavior undefined
**   - Interval might contain '\0's
**   - No guarantee that (.data + .size) points to a (valid) '\0'
*/

/*
** -= Construction =-
**   - No specific destruction required
**   - Copy with operator equal
**   - Construction from t_ftstr range as ftstr_substr
*/

static t_ftstrv			ftsv_empty(void);
static t_ftstrv			ftsv_of_cstr(char const *str);
static t_ftstrv			ftsv_of_mem(char const *ptr, size_t size);
# define FTSV_OF_LITERAL(S) (t_ftstrv){.data = (S), .size = sizeof((S)) - 1}

/*
** -= Iteration =- TODO: look ocaml and <algorithm>
**   - begin() with field access
*/

static char const		*ftsv_rbegin(t_ftstrv sv);
static char const		*ftsv_end(t_ftstrv sv);
static char const		*ftsv_rend(t_ftstrv sv);

/*
** -= Element access =-
**   - char ftsv_access(t_ftstrv const*)
**   - at() with field access
**   - front() with field access
**   - data() with field access
*/

static char				ftsv_back(t_ftstrv sv);

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
