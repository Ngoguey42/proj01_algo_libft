
#ifndef FT_SET_H
# define FT_SET_H

# include "libft.h"

# define SETNODE struct s_ftset_node

typedef struct		s_ftset_node
{
	SETNODE			*parent;
	SETNODE			*l;
	SETNODE			*r;
	size_t			height;
}					t_ftset_node;

typedef struct		s_ftset
{
	SETNODE			*head;
	size_t			size;
	size_t			height;
	size_t			chunk_size;
	int				(*cmp)();
}					t_ftset;

typedef struct		s_ftset_insertion
{
	SETNODE			*ptr;
	t_bool			inserted;
}					t_ftset_insertion;

void				fts_init_instance(t_ftset *s, size_t chunk_size
										, int (*cmp)());
t_ftset				fts_uninitialized(void);

int					fts_insert(t_ftset *s, t_ftset_node const *node
								, t_ftset_insertion *status);

// t_ftset_node const	*ftv_cnext(t_ftset_node const *node);
t_ftset_node		*fts_next(t_ftset_node *node);
t_ftset_node		*fts_begin(t_ftset *set);

# undef SETNODE

#endif
