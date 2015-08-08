/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_list.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/08 15:33:10 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/08 16:27:48 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_LIST_H
# define FT_LIST_H

# include "libft.h"

# define LNODE struct s_ftlist_node

/*
** t_ftlist_node must be in the beginning of the storage struct.
** next and prev must have the same order in t_ftlist_node and t_ftlist_head
*/

typedef struct		s_ftlist_node
{
	LNODE			*next;
	LNODE			*prev;	
}					t_ftlist_node;

typedef struct		s_ftlist_head
{
	LNODE			*next;
	LNODE			*prev;
	size_t			chunk_size;
	size_t			size;
}					t_ftlist_head;

/*
** * Initialization functions **
** *
** 'ftl_init_instance'	Initializes all values in 'l'.
** *
** 'ftl_uninitialized'	Returns a default head.
*/
int					ftl_init_instance(t_ftlist_head *l, size_t chunk_size);
t_ftlist_head		ftl_uninitialized(void);

/*
** Adding modifications **
*/
int					ftl_push_back(t_ftlist_head *l, t_ftlist_node const *node);
int					ftl_push_front(t_ftlist_head *l, t_ftlist_node const *node);

# undef LNODE

#endif
