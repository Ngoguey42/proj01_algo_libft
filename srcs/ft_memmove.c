
#include "libft.h"

void	*ft_memmove(void *dst, const void *src, size_t n)
{
	
	if (src >= dst)
		ft_memcpy(dst, src, n);
	else
	{
		while (n-- > 0)
			((char*)dst)[n] = ((char*)src)[n];
	}
	return (dst);
}