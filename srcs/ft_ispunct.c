
#include "libft.h"

int	ft_ispunct(int c)
{
	return((c > ' ' && c <= '~' && !ft_isalnum(c)) * 16);
}