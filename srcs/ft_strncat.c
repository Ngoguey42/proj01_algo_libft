
#include "libft.h"

char	*ft_strncat(char *s1, const char *s2, size_t num)
{
	ft_strlcpy(s1 + ft_strlen(s1), s2, num + 1);
	return (s1);
}