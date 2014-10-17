
#include "libft.h"
#include <stdlib.h>

int	ft_strequ(const char *s1, const char *s2)
{
	if (s1 == s2)
		return (1);
	else if (s1 == NULL || s2 == NULL)
		return (0);
	return (ft_strcmp(s1, s2) ? 0 : 1);
}