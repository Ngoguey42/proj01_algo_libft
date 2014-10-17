#include "libft.h"

uint64_t	ft_getbitarray(unsigned char* nbr, size_t first, size_t last)
{
	uint64_t	ret;
	unsigned char			*ptr;
	size_t					i;

	ret = 0;
	ptr = (unsigned char*)&ret;
	i = first;
	while (i <= last)
	{
		if (nbr[i/8] & (1 << (i%8)))
			ptr[(i - first)/8] |= (1 << ((i - first)%8));
		i++;
	}
	return (ret);
}