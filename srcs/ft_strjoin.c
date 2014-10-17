
#include "libft.h"
#include <stdlib.h>

char	*ft_strjoin(const char *s1, const char *s2)
{
	char	*ret;
	size_t	len;

	if (!s1 || !s2)
		return (NULL);
	ret = (char*)malloc((len = ft_strlen(s1) + ft_strlen(s2) + 1));
	if (!ret)
		return (NULL);
	ret = ft_strcpy(ret, s1);
	ret = ft_strcat(ret, s2);
	ret[len - 1] = '\0';
	return (ret);
}