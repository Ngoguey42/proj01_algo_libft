#include "libft.h"

int	ft_tolower(int c)
{
	if (c >= 'A' && c <= 'a')
		return (c - 'A' + 'a');
	return (c);
}