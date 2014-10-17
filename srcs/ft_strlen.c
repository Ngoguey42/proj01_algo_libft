
#include "libft.h"

size_t	ft_strlen(const char *str)
{
	const char *eos;

	eos = str;
	while (*eos)
		eos++;
	return (eos - str);
}