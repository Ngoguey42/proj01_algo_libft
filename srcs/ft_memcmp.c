
#include "libft.h"

int		ft_memcmp(const void *ptr1, const void *ptr2, size_t num)
{
	const char	*s1 = (char*)ptr1;
	const char	*s2 = (char*)ptr2;

	while(num > 0)
	{
		if (*s1 != *s2)
			return ((unsigned char)*s1 - (unsigned char)*s2);
		s1++;
		s2++;
		num--;
	}
	return (0);
}