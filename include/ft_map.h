/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_map.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/12 10:33:58 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 10:34:23 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_MAP_H
# define FT_MAP_H

# include <stddef.h>
# include <stdbool.h>
# include <stdint.h>

/*
** Abstract Data Type: BST
** Data Structure: AVL
*/

# define MAPNODE struct s_ftmap_node

typedef struct		s_ftmap_node
{
	MAPNODE			*parent;
	MAPNODE			*l;
	MAPNODE			*r;
	size_t			height;
}					t_ftmap_node;

# undef MAPNODE

typedef struct		s_ftmap
{
	t_ftmap_node	*head;
	size_t			size;
	size_t			height;
	size_t			chunk_size;
	int				(*cmp)();
}					t_ftmap;

typedef struct		s_ftmap_insertion
{
	t_ftmap_node	*ptr;
	bool			inserted;
}					t_ftmap_insertion;

/*
** * Initialization functions **
*/
void				ftm_init_instance(
	t_ftmap *s, size_t chunk_size, int (*cmp)());
t_ftmap				ftm_uninitialized(void);

/*
** * Destruction functions **
*/
void				ftm_release(t_ftmap *s, void (*dea)());

/*
** * Insertion functions **
*/
int					ftm_insert(
	t_ftmap *s, t_ftmap_node const *node, t_ftmap_insertion *status);

/*
** * Iteration functions **
*/
void				ftm_foreach(t_ftmap *s, void (*fun)(), void *ext);
void				ftm_foreachi(t_ftmap *s, void (*fun)(), void *ext);
t_ftmap_node		*ftm_next(t_ftmap_node *node);
t_ftmap_node		*ftm_begin(t_ftmap *map);
t_ftmap_node const	*ftm_cnext(t_ftmap_node const *node);
t_ftmap_node const	*ftm_cbegin(t_ftmap const *map);

#endif
