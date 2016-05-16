/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftlibc_stdlib.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/16 10:07:17 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 10:09:16 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FTLIBC_STDLIB_H
# define FTLIBC_STDLIB_H

# include <stddef.h>
# include <stdbool.h>
# include <stdint.h>

/*
** -
** stdlib.h
** -
*/
int		ft_atoi(const char *str);
int		ft_atoi_base(const char *str, int base);
/*
** itoa and co.
** ft_itoa		alloc	, int		, base 10
** ft_itoa_c	copy	, int		, base n
** ft_itoa_a	alloc	, int		, base n
** ft_lutoa		copy	, uint64	, base n
** ft_lutoa_a	alloc	, uint64	, base n
** NYI:
** ft_litoa		copy	, int64		, base n
** ft_litoa_a	alloc	, uint64	, base n
** ft_utoa		copy	, uint		, base n
** ft_utoa_a	alloc	, uint		, base n
*/
char	*ft_itoa(int n);
char	*ft_itoa_c(int value, char *str, int base);
char	*ft_itoa_a(int value, int base);
char	*ft_lutoa(uint64_t value, char *str, int base);
char	*ft_lutoa_a(uint64_t value, int base);
char	*ft_utoa(uint32_t value, char *str, int base);
/*
** char	*ft_litoa(t_i64 value, char *str, int base);
** char	*ft_litoa_a(t_i64 value, int base);
** char	*ft_utoa_a(uint32_t value, int base);
*/
/*
** Custom Strings Manipulation:
*/
int		ft_maxintlen(size_t sizeofint, int base);
int		ft_convsz(uint64_t bytes, char *buffer);
char	*ft_roundup_b10(char *str);
void	ft_putexpchar(int exp, char *buffer);
char	*ft_pad_string(char *str, char c, int n, int freestr);
char	*ft_revstr(char *str);
int		ft_eval_expr(char *str);
/*
** Allocation:
*/
void	*ft_memalloc(size_t size);
void	*ft_memdup(void const *p, size_t size);
void	*ft_realloc(void *ptr, size_t old_size, size_t new_size);
void	*ft_crealloc(void *ptr, size_t old_size, size_t new_size);
void	ft_memdel(void **ap);
char	*ft_strnew(size_t size);
void	ft_strdel(char **as);
char	*ft_strdup(const char *s1);
char	*ft_strjoin(char const *s1, char const *s2);
char	*ft_strjoinfree(char *s1, char *s2, int frees1, int frees2);
char	*ft_strsub(char const *s, uint32_t start, size_t len);
char	*ft_strtrim(char const *s);
char	**ft_strsplit(char const *s, char c);
int		ft_strsplit_s(const char *s, char *delims, char ***ret);

#endif
