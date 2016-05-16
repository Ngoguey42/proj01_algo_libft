/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftl_conversions.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/08 18:53:56 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/12 17:19:16 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <errno.h>
#include <stdlib.h>
#include "ft_list.h"

inline t_ftlist_node		*ftl_end(t_ftlist *l)
{
	return ((t_ftlist_node*)l);
}

inline t_ftlist_node const	*ftl_cend(t_ftlist const *l)
{
	return ((t_ftlist_node const*)l);
}
