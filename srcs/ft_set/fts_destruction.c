
#include "ft_set.h"
#include <stdlib.h>

void				fts_release(t_ftset *s, void (*dea)())
{
	t_ftset_node 			*node;

	node = fts_begin(s);
	while (node != NULL)
	{
		if (dea != NULL)
			dea(node);
		free(node);
		node = fts_next(node);
	}
	*s = fts_uninitialized();
	return ;
}
