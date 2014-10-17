
#include "libft.h"

int	ft_isalpha(int c)
{
	if (ft_islower(c))
		return (2);
	return(ft_isupper(c));
}