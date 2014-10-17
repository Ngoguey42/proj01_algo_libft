
#include "libft.h"
#include <stdlib.h>

char	*ft_strstr(const char *src, const char *tofind)
{
	size_t	len;

	len = ft_strlen(tofind);
	if (len > 0)
	{
		while (ft_strncmp(src, tofind, len))
		{
			if (!*src)
				return (NULL);
			src++;
		}
	}
	return ((char*)src);
}