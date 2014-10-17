
typedef	int word;

#define wsize	sizeof(word)
#include <stdlib.h>
#include <limits.h>

void	*ft_memset(void *ptr, int c0, size_t nb)
{
	size_t			t;
	unsigned int	c;

	if ((c = (unsigned char)c0) != 0)
	{
		c = (c << 8) | c;
#if UINT_MAX > 0xffff
		c = (c << 16) | c;
#endif
#if UINT_MAX > 0xffffffff
		c = (c << 32) | c;
#endif
	}
	t = nb / wsize;
	while (t)
	{
		*(word*)ptr = c;
		ptr += wsize;
		t--;
	}
	t = nb % wsize + 1;
	while (--t)
		*(char*)ptr++ = (unsigned char)c0;
	return (ptr - nb);
}