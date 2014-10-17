
#include "libft.h"

size_t	ft_strcharlen(const char *str, const char delim)
{
	const char *eos;

	eos = str;
	while (*eos != '\0' && *eos != delim)
		eos++;
	return (eos - str);
}