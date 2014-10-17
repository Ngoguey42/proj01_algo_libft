
#include "libft.h"
#include <stdlib.h>

char	*ft_strdup(const char *src)
{
	size_t	len;
	char	*trg;

	len = ft_strlen(src) + 1;
	trg = malloc((unsigned int)len);
	if (!trg)
		return (NULL);
	ft_memcpy((void*)trg, (const void*)src, len);
	return (trg);
}