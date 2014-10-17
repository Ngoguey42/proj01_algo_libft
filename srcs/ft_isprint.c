
#include "libft.h"

int	ft_isprint(int c)
{
	if (c == ' ')
		return (128);
	return (ft_isgraph(c));
}