/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_error.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/16 09:17:25 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 09:17:29 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_ERROR_H
# define FT_ERROR_H

# include <stddef.h>
# include <stdbool.h>
# include <stdint.h>

void		ft_enomem(void);

int			fte_error(char const *strings[3], int line, ...);
int			fte_errorno(char const *strings[3], int line, ...);
int			fte_warn(char const *strings[3], int line, ...);
int			fte_warnno(char const *strings[3], int line, ...);

# define ERR_STR(FORMAT) (char const*[3]){__FILE__, __FUNCTION__, FORMAT}

# define ERRORF(FMT, ...) fte_error(ERR_STR(FMT), __LINE__, ##__VA_ARGS__)
# define ERROR(FMT) ERRORF(FMT)

# define ERRORNOF(FMT, ...) fte_errorno(ERR_STR(FMT), __LINE__, ##__VA_ARGS__)
# define ERRORNO(FMT) ERRORNOF(FMT)

# define WARNF(FMT, ...) fte_warn(ERR_STR(FMT), __LINE__, ##__VA_ARGS__)
# define WARNNOF(FMT, ...) fte_warnno(ERR_STR(FMT), __LINE__, ##__VA_ARGS__)

void		fte_assert(bool pred, char const *strings[3], int line);
# define ASRT_STR(BODYSTR) (char const*[3]){__FILE__, __FUNCTION__, BODYSTR}
# define FT_ASSERT(BODY) fte_assert(BODY, ASRT_STR(#BODY), __LINE__)

char const	*ft_strerror(int errnum);

#endif
