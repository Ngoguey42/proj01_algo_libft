
#include "libft.h"

int	ft_atoi(const char *str)
{
	int		sign;
	int		total;
	char	*cur;

	if (!str)
		return (0);
	total = 0;
	cur = (char *)str;
	while (ft_isspace(*cur))
		cur++;
	sign = *cur == '-' ? -1 : 1;
	cur = (*cur == '-' || *cur == '+') ? cur : cur - 1;
	while (ft_isdigit(*++cur))
		total = total * 10 + *cur - '0';
	return (total * sign);
}