#include "libft.h"
#include "ft_math.h"

/*
**	+norm	1
**	-norm	2
**	+denorm	3
**	-denorm	4
**	+zero	5
**	-zero	6
**	+inf	7
**	-inf	8
**	nan		9
**	qnan	10
*/

#define INF_NAN_EXP			0x7FF
#define INF_HMANT			0x0
#define INF_LMANT			0x0
#define ZERO_DENORM_EXP		0x0
#define ZERO_HMANT			0x0
#define ZERO_LMANT			0x0

#include <stdio.h>

// VERSION 2 - bitwise union
int	ft_dbltype(double nbr)
{
	t_dbl_extract		extract;
	t_nan_dbl_extract	extractnan;

	extract.d = nbr;
	// printf("[%7.3f %12u %12u %12u %12u]", extract.d, extract.s.sig, extract.s.exp, extract.s.manh, extract.s.manl);
	if (extract.s.exp == INF_NAN_EXP)
	{
		if (extract.s.manh == INF_HMANT && extract.s.manl == INF_LMANT)
			return (7 + extract.s.sig);
		else
		{
			extractnan.d = nbr;
			(void)extractnan;
			return (9 + extractnan.s.nan);
		}
	}
	if (extract.s.exp == ZERO_DENORM_EXP)
	{
		if (extract.s.manh == ZERO_HMANT && extract.s.manl == ZERO_LMANT)
			return (5 + extract.s.sig);
		else
			return (3 + extract.s.sig);
	}
	return (1 + extract.s.sig);
}


// #define INF_VALUE 0x7FF0000000000000
// #define ZERO_VALUE 0x0000000000000000
// #define DENORM_ARRAY_MAX 0x000FFFFFFFFFFFFF
// #define DENORM_ARRAY_MIN 0x0000000000000001
// #define NORM_ARRAY_MAX 0x7FEFFFFFFFFFFFFF
// #define NORM_ARRAY_MIN 0x0010000000000000

// // // // VERSION 1 - dirty
// int	ft_dbltype(double nbr_ref)
// {
	// uint64_t	nbr;
	// unsigned char			*ptr;
	// int						neg;

	// nbr = 0;
	// ptr = (unsigned char*)&nbr;
	// ft_memcpy(ptr, (unsigned char*)&nbr_ref, 8);
	// neg = 0;
	// if (ptr[7] & 0x80)
	// {
		// ptr[7] = ptr[7] ^ 0x80;
		// neg = 1;
	// }
	// if (nbr == INF_VALUE)
		// return (neg ? 8 : 7);
	// else if (nbr == ZERO_VALUE)
		// return (neg ? 6 : 5);
	// else if (nbr >= DENORM_ARRAY_MIN && nbr <= DENORM_ARRAY_MAX)
		// return (neg ? 4 : 3);
	// else if (nbr >= NORM_ARRAY_MIN && nbr <= NORM_ARRAY_MAX)
		// return (neg ? 2 : 1);
	// return (9);
// }