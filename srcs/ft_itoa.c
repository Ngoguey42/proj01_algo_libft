#include "libft.h"
#include "ft_math.h"
#include <stdlib.h>

char	*ft_itoa(int n)
{
	char	*str;
	char	*save;
	int		i;

	i = sizeof(int);
	str = (char*)malloc((i == 4) ? 12 : 21); //malloc
	if (!(save = str))
		return (NULL);
	if (n < 0)
		*(str++) = '-';
	else if (n == 0)
		*(str++) = '0';
	i = 0;
	while (n != 0)
	{
		str[i++] = ABS(n % 10) + '0';
		n /= 10;
	}
	str[i] = '\0';
	ft_revstr(str);
	return (save);
}