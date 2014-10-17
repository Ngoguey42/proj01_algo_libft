
#include "libft.h"

int	ft_iscntrl(int c)
{
	return(((c >= '\0' && c < ' ') || c == 0x7F) * 32);
}