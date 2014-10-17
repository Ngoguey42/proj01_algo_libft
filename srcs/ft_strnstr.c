
#include "libft.h"
#include <stdlib.h>

char	*ft_strnstr(const char *s1, const char *s2, size_t n)
{
	size_t	len;

	len = ft_strlen(s2);
	len = (n < len) ? n : len;
	if (len > 0)
	{
		while (ft_strncmp(s1, s2, len))
		{
			if (!*s1)
				return (NULL);
			s1++;
		}
	}
	return ((char*)s1);
}