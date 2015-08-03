
#include <stdio.h>
#include "ft_vector.h"
#include "libft.h"
#include "ft_debug.h"

void			ftv_summarize(t_ftvector const *v)
{
	char	buf[8];

	snprintf(buf, sizeof(buf), "(%u)", v->chunk_size);
	qprintf("Vec%-4s: chunks->% 4u/% -4u bytes->% 6u/% -6u\n"
				, buf
				, v->size, v->capacity
				, v->size * v->chunk_size, v->capacity * v->chunk_size);
	return ;
}
