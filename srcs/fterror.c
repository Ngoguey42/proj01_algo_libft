/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fterror.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/10 14:03:59 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/10 14:06:12 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "fterror.h"
#include <stdlib.h>

void				ft_enomem(void)
{
	ft_putendl_fd("\033[31mError\033[0m: ENOMEM", 2);
	exit(1);
}

void			fte_assert(t_bool pred, char const *strings[3], int line)
{
	if (!pred)
	{
		qprintf("\033[31mAssertion failed:\033[0m l%d \"%s\"\n"
				, line, strings[2]);
		exit(1);
		
	}
	return ;
}
