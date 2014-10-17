
#include <stdlib.h>

char	*ft_strchr(const char *str, int c)
{
	char	tofind;

	tofind = (char)c;
	while (*str != tofind)
	{
		if (*str == '\0')
			return (NULL);
		str++;
	}
	return ((char*)str);
}