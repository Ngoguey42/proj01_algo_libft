
#include "libft.h"
#include <stdlib.h>

char	*ft_strjoinfree(char *s1, char *s2, int frees1, int frees2)
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
	if (s1 == s2 && (frees1 || frees2))
	{
		free(s1);
		return (ret);
	}
	if (frees1)
		free(s1);
	if (frees2)
		free(s2);
	return (ret);
}