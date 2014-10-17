
#include "libft.h"

int	ft_isalnum(int c)
{
	if (ft_islower(c))
		return (2);
	else if (ft_isdigit(c))
		return (4);
	return (ft_isupper(c));
}