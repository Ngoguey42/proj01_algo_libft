
#include "libft.h"

void	ft_myassert(int relation)
{
	if (relation)
	{
		ft_putstr("\033[32m");
		ft_putstr("_TRUE");
	}
	else
	{
		ft_putstr("\033[31m");
		ft_putstr("FALSE");
	}
	ft_putstr("\033[39m");
}