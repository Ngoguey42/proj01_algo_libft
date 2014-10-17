
#include "libft.h"

int	ft_isgraph(int c)
{
	int	i;

	if (c > ' ' && c <= '~')
		return ((i = ft_isalnum(c)) ? i : 16);
	return (0);
}