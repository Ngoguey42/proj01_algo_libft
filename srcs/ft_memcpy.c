
typedef	int word;

#define wsize	sizeof(word)
#include <stdlib.h>

void	*ft_memcpy(void *trg, const void *src, size_t nb)
{
	size_t	t;

	if (nb == 0 || trg == src)
		return (trg);
	t = nb / wsize;
	while (t)
	{
		*(word*)trg = *(word*)src;
		trg += wsize;
		src += wsize;
		t--;
	}
	t = nb % wsize;
	while (t)
	{
		*(char*)trg++ = *(char*)src++;
		t--;
	}
	return (trg - nb);
}