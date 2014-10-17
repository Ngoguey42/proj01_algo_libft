
#include <stdlib.h>

char	*ft_strrchr(const char *str, int c)
{
	char	tofind;
	char	*pos;

	tofind = (char)c;
	pos = NULL;
	while (1)
	{
		if (*str == tofind)
			pos = (char*)str;
		if (*str == '\0')
			return (pos);
		str++;
	}
}