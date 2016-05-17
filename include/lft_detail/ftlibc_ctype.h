/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftlibc_ctype.h                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/16 10:10:02 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 10:10:16 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FTLIBC_CTYPE_H
# define FTLIBC_CTYPE_H

/*
** -
** ctype.h
** -
*/
int		ft_isalnum(int c);
int		ft_isalpha(int c);
int		ft_isblank(int c);
int		ft_iscntrl(int c);
int		ft_isdigit(int c);
int		ft_isgraph(int c);
int		ft_islower(int c);
int		ft_isprint(int c);
int		ft_ispunct(int c);
int		ft_isspace(int c);
int		ft_isunixspace(int c);
int		ft_isupper(int c);
int		ft_isxdigit(int c);

int		ft_isascii(int c);
int		ft_isescape(int c);
int		ft_isdigit_base(int c, int base);

int		ft_toupper(int c);
int		ft_tolower(int c);

#endif