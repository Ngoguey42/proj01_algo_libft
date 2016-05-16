
/*
** clang test_includes.c -Wall -Wextra -I ../include
*/

/* #include "lft_detail/ft_arithmetic.h" */
/* #include "lft_detail/ft_debug_detail.h" */
/* #include "lft_detail/ft_macroes.h" */
/* #include "lft_detail/ft_map_detail.h" */
/* #include "lft_detail/ft_timeval.h" */
/* #include "lft_detail/ft_typedefs.h" */
/* #include "lft_detail/ftlibc_ctype.h" */
/* #include "lft_detail/ftlibc_stdio.h" */
/* #include "lft_detail/ftlibc_stdlib.h" */
/* #include "lft_detail/ftlibc_string.h" */
/* #include "lft_detail/libft_configuration.h" */

/* #include "libft.h" */

/* #include "ft_arg.h" */
/* #include "ft_debug.h" */
/* #include "ft_error.h" */
/* #include "ft_list.h" */
/* #include "ft_map.h" */
#include "ft_string.h"
/* #include "ft_vector.h" */
/* #include "ft_containers.h" */

#include <stdio.h>

int					main(int ac, char **av)
{
	(void)av;
	t_ftstrv sv = FTSV_OF_LITERAL("tamere1");
	/* t_ftstrv sv = ftsv_empty(); */
	printf("'%c'\n", ftsv_back(&sv));
	printf("'%c'\n", sv.data[0]);

	ftsv_end(&sv);
	ftsv_end((t_ftstrv[1]){FTSV_OF_LITERAL("tamere1")});
	ftsv_end(&FTSV_OF_LITERAL("tamere1"));
	ftsv_end(&ftsv_of_cstr("putain"));

	return (sv.size + ac + 0xDEADBEEF);
}
