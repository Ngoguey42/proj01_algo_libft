#include "libft.h"
#include "ft_math.h"
#include <stdlib.h>

// #define ABS(x) (x < 0 ? -x : x)

/*
** (n < 0) pad right
** (n > 0) pad left
** Undefined if |n| < ft_strlen(str)
*/

char	*ft_pad_string(char *str, char c, int n, int freestr)
{
	char	*ret;
	char	*rets;
	char	*strs;

	ret = (char*)malloc(ABS(n) + 1);	//malloc
	// if (!(ret = rets = (char*)malloc(ABS(n) + 1)))
	if (!ret)
		exit(0); //exit
	n += n < 0 ? ft_strlen(str) : -ft_strlen(str);
	// if (n == 0)
		// return (str); //malloc ce return ?
	rets = ret;
	if (n > 0)
	{
		while (n--)
			*ret++ = c;
		n = 0;
	}
	strs = str;
	while (*str)
		*ret++ = *str++;
	if (n < 0)
	{
		while (n++)
			*ret++ = c;
	}
	*ret = '\0';
	if (freestr)
		free(strs);
	return (rets);
}