
#include "libft.h"

void	ft_myputnchar(char *str, int num)
{
	if (!str)
		return ;
	while (num > 0)
	{
		if (ft_isprint(*str))
			ft_putchar(*str);
		else
		{
			ft_putstr("\033[33m");
			ft_putnbr(*str);
			ft_putstr("\033[39m");
		}
		str++;
		num--;
	}
}