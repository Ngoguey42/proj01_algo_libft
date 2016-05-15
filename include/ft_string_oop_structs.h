/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_string_oop_structs.h                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/15 15:29:03 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/15 15:29:36 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_STRING_OOP_STRUCTS_H
# define FT_STRING_OOP_STRUCTS_H

# include <stddef.h>

typedef struct	s_ftstrv
{
	char const	*data;
	size_t		size;
}				t_ftstrv;

typedef struct	s_ftstr
{
	char		*data;
	size_t		size;
	size_t		capacity;
}				t_ftstr;

#endif
