
#include <stdlib.h>

size_t	ft_strcspn(const char *s1r, const char *s2r)
{
	const char *s1;
	const char *s2;

	s1 = s1r;
	while (*s1)
	{
		s2 = s2r;
		while (*s2)
		{
			if (*s1 == *s2++)
				return (s1 - s1r);
		}
		s1++;
	}
	return (s1 - s1r);
}