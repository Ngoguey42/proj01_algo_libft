#include "ft_math.h"
#include <stdlib.h>

div_t	ft_div(int num, int denom)
{
	div_t	res;

	res.quot = num / denom;
	res.rem = num % denom;
	if (num >= 0 && res.rem < 0)
	{
		res.quot++;
		res.rem -= denom;
	}
	return (res);
}