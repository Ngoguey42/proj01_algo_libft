#include "libft.h"
#define BASE_NBRS "0123456789abcdefghijklmnopqrstuvwxyz"

void	ft_lutoa(uint64_t value, char *str, int base)
{
	int	i;

	if (value == 0)
		*(str++) = '0';
	i = 0;
	while (value != 0)
	{
		str[i++] = BASE_NBRS[value % base];
		value /= base;
	}
	str[i] = '\0';
	ft_revstr(str);
}