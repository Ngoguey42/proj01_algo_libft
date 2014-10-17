#include "ft_math.h"
#include "libft.h"

#include <stdlib.h>

div_t	ft_pythai(int v1, int v2)
{
	div_t	res;

	res.quot = ft_sqrtfloor(v1 * v1 + v2 * v2);
	res.rem = v1 * v1 + v2 * v2 - res.quot * res.quot;
	return (res);
}