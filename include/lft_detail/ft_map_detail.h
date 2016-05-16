/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_map_detail.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/16 08:19:55 by ngoguey           #+#    #+#             */
/*   Updated: 2016/05/16 10:38:34 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_MAP_DETAIL_H
# define FT_MAP_DETAIL_H

# include "ft_map.h"

t_ftmap_node	*ftm_build_cur(
	t_ftmap *const s, t_ftmap_node const *const new,
	t_ftmap_insertion *const status, t_ftmap_node *const cur);

void			ftm_increment_parents_heights(
	t_ftmap_node const *son, t_ftmap_node *parent);

t_ftmap_node	*ftm_gen_node(
	t_ftmap *s, t_ftmap_node *parent,
	t_ftmap_node const *new, t_ftmap_insertion *status);

void			ftm_repair_sons_link(t_ftmap_node *son, t_ftmap_node *parent);

void			ftm_repair_node_height(t_ftmap_node *node);

void			ftm_repair_parents_link(
	t_ftmap_node *son, t_ftmap_node *parent, t_ftmap_node const *oldson);

void			ftm_repair_parents_heights(t_ftmap_node *node);

t_ftmap_node	*ftm_rebalance_node(t_ftmap_node *cur);

#endif
