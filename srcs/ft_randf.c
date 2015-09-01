
#include <stdlib.h>

#define PRECISION 1000000
#define PRECISIONF ((float)PRECISION)

float			ft_randf01(void)
{
	return ((float)(rand() % PRECISION) / (PRECISIONF - 1.f));
}

float			ft_randf0(void)
{
	return ((float)(rand() % PRECISION) / (PRECISIONF - 1.f) - 0.5f);
}
