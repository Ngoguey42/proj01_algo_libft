
#include "libft.h"

char	*ft_strncpy(char *s1, const char *s2, size_t num)
{
	char *s = s1;

	while (num > 0 && *s2)
	{
		*s++ = *s2++;
		num--;
	}
	while (num > 0)
	{
		*s++ = '\0';
		num--;
	}
	return (s1);
}