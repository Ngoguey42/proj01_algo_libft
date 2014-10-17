#include "libft.h"
#include <stdlib.h>

char	*ft_lutoa_d(uint64_t value, int base)
{
	char*	str;

	str = (char*)malloc(sizeof(uint64_t) * 8 + 1); //malloc
	if (!str)
		return (NULL);
	ft_lutoa(value, str, base);
	return (str);
}