/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_macroes.h                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/06/03 16:21:10 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/10 12:24:05 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_MACROES_H
# define FT_MACROES_H

# define ABS(x) ((x) < 0 ? -(x) : (x))
# define MAX(V1, V2) ((V1) > (V2) ? V1 : V2)
# define MIN(V1, V2) ((V1) < (V2) ? V1 : V2)
# define BASE_NBRS "0123456789abcdefghijklmnopqrstuvwxyz"

# define SIZE_ARRAY(A) (sizeof((A)) / sizeof(*(A)))
# define STRIDE_ARRAY(A) (sizeof(*(A)))
# define END_ARRAY(A) ((void*)(A) + sizeof((A)))
# define REACH_OFFSET(TYPE, P, OFF) ((TYPE*)((void*)(P) + (size_t)(OFF)))

#endif
