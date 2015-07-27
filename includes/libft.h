/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 20:28:26 by ngoguey           #+#    #+#             */
/*   Updated: 2015/07/27 09:18:22 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <stddef.h>

/*
**# define LIBFT_INTERNAL_USE_STD
*/
# define LIBFT_INTERNAL_USE_STD

# ifdef LIBFT_INTERNAL_USE_STD

#  define LIBFT_REALLOC(ptr, olds, news)	realloc((ptr), (news))
#  define LIBFT_MEMCPY						memcpy
#  define LIBFT_MEMCMP						memcmp

# else

#  define LIBFT_REALLOC(ptr, olds, news)	ft_realloc((ptr), (olds), (news))
#  define LIBFT_MEMCPY						ft_memcpy
#  define LIBFT_MEMCMP						ft_memcmp

# endif

# include "ft_typedefs.h"
# include "ft_macroes.h"
# include "ft_stdio.h"
# include "ft_stdlib.h"
# include "ft_ctype.h"
# include "ft_string.h"

void			ft_skiptype(char **pptr, int (*typefun)(int c));
void			ft_skipntype(char **pptr, int (*typefun)(int c));
size_t			ft_parseuinteger(char *str, size_t *uiptr);
size_t			ft_strlentype(char const *str, int (*typefun)(int c));

#endif
