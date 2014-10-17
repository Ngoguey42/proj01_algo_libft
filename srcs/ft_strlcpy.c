
#include "libft.h"

size_t	ft_strlcpy(char *s1, const char *s2, size_t num)
{
	size_t	len;

	len = ft_strlen(s2);
	while (num > 1 && *s2)
	{
		*s1++ = *s2++;
		num--;
	}
	if (num >= 1)
		*s1 = '\0';
	return (len);
}