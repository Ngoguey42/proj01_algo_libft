/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fts_structs.h                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/16 09:48:11 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 09:48:19 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FTS_STRUCTS_H
# define FTS_STRUCTS_H

# include <stddef.h>
# include <stdbool.h>
# include <stdint.h>

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
