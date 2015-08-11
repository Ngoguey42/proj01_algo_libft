
#include "ft_set.h"

void				fts_init_instance(t_ftset *s, size_t chunk_size
										, int (*cmp)())
{
	// *s = (t_ftset){(t_ftset_node*)s, 0, 0, chunk_size};
	*s = (t_ftset){NULL, 0, 0, chunk_size, cmp};
	return ;
}

t_ftset				fts_uninitialized(void)
{
	return ((t_ftset){NULL, 0, 0, 0, NULL});
}
