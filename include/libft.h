/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 20:28:26 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/15 14:15:29 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <stddef.h>
# include <stdbool.h>
# include <stdint.h>

# include "libft_configuration.h"

# include "ft_typedefs.h"
# include "ft_macroes.h"
# include "ft_stdio.h"
# include "ft_stdlib.h"
# include "ft_ctype.h"
# include "ft_string.h"
# include "ft_arithmetic.h"

void			ft_skiptype(char **pptr, int (*typefun)(int c));
void			ft_skipntype(char **pptr, int (*typefun)(int c));
size_t			ft_parseuinteger(char *str, size_t *uiptr);
size_t			ft_strlentype(char const *str, int (*typefun)(int c));

int				ft_max(int a, int b);
int				ft_min(int a, int b);
int				ft_abs(int x);
float			ft_fmax(float a, float b);
float			ft_fmin(float a, float b);
float			ft_fabs(float x);

float			ft_randf01(void);
float			ft_randf0(void);

uint16_t		ft_i16toh(uint16_t i, bool big_endian);
uint32_t		ft_i32toh(uint32_t i, bool big_endian);
uint64_t		ft_i64toh(uint64_t i, bool big_endian);
void			ft_uint_reorder(void *ptr, size_t size, bool big_endian);

#endif
