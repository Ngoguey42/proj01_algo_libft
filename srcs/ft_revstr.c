#include "libft.h"

void	ft_revstr(char *str)
{
	int		i;
	char	c;

	i = (int)ft_strlen(str);
	while (i >= 2)
	{
		c = *str;
		*str = str[i - 1];
		str[i - 1] = c;
		str++;
		i -= 2;
	}
}