/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_list.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/08 15:33:10 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/08 18:37:30 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_LIST_H
# define FT_LIST_H

# include "libft.h"

# define LISTNODE struct s_ftlist_node
# define LISTNODEC struct s_ftlist_node const

/*
** t_ftlist_node must be in the beginning of the storage struct.
** next and prev must have the same order in t_ftlist_node and t_ftlist
*/

typedef struct		s_ftlist_node
{
	LISTNODE		*next;
	LISTNODE		*prev;	
}					t_ftlist_node;

typedef struct		s_ftlist
{
	LISTNODE		*next;
	LISTNODE		*prev;
	size_t			chunk_size;
	size_t			size;
}					t_ftlist;

/*
** * Initialization functions **
** *
** 'ftl_init_instance'	Initializes all values in 'l'.
** *
** 'ftl_uninitialized'	Returns a default head.
*/
void				ftl_init_instance(t_ftlist *l, size_t chunk_size);
t_ftlist			ftl_uninitialized(void);

/*
** Adding modifications **
*/
int					ftl_push_back(t_ftlist *l, LISTNODEC *node);
int					ftl_push_front(t_ftlist *l, LISTNODEC *node);
int					ftl_insert_pos(t_ftlist *l, LISTNODE *pos, LISTNODEC *node);

/*
** Removing modifications **
*/
void				ftl_release(t_ftlist *l, void (*deallocator)());
void				ftl_pop_back(t_ftlist *l, void (*deallocator)());
void				ftl_pop_front(t_ftlist *l, void (*deallocator)());

/*
** Conversions **
*/
# define FTL_CONVNODE(P) ((LISTNODE*)(P))
# define FTL_CONVNODEC(P) ((LISTNODE const*)(P))
# define FTL_END(P) FTL_CONVNODEC((P))

# undef LISTNODE
# undef LISTNODEC

#endif
