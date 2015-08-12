/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fts_balance.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/12 13:42:07 by ngoguey           #+#    #+#             */
/*   Updated: 2015/08/12 13:46:00 by ngoguey          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_set.h"
#include <errno.h>

#define SETNODE struct s_ftset_node
#define ARGS cur, l1, r1, l2, r2

#include "ft_debug.h" //debug
/* #define QPRINTF qprintf */
#define QPRINTF(...)

static SETNODE		*bal_ll(t_ftset_node *cur
								, t_ftset_node *l1
								, t_ftset_node *r1
								, t_ftset_node *l2
								, t_ftset_node *r2)
{
	QPRINTF("bal ll\n");
	*l1 = (SETNODE){cur->parent, l2, cur, 0};
	*cur = (SETNODE){l1, r2, r1, 0};
	fts_repair_sons_link(r2, cur);
	fts_repair_parents_link(l1, l1->parent, cur);
	fts_repair_node_height(cur);
	fts_repair_node_height(l1);
	fts_repair_parents_heights(l1->parent);
	return (l1);
}

static SETNODE		*bal_lr(t_ftset_node *cur
								, t_ftset_node *l1
								, t_ftset_node *r1
								, t_ftset_node *l2
								, t_ftset_node *r2)
{
	t_ftset_node	*l3;
	t_ftset_node	*r3;

	QPRINTF("bal lr\n");
	l3 = r2->l;
	r3 = r2->r;
	*r2 = (SETNODE){cur->parent, l1, cur, 0};
	*l1 = (SETNODE){r2, l2, l3, 0};
	*cur = (SETNODE){r2, r3, r1, 0};
	fts_repair_sons_link(l3, l1);
	fts_repair_sons_link(r3, cur);
	fts_repair_parents_link(r2, r2->parent, cur);
	fts_repair_node_height(l1);
	fts_repair_node_height(cur);
	fts_repair_node_height(r2);
	fts_repair_parents_heights(r2->parent);
	return (r2);
}

static SETNODE		*bal_rr(t_ftset_node *cur
								, t_ftset_node *l1
								, t_ftset_node *r1
								, t_ftset_node *l2
								, t_ftset_node *r2)
{
	QPRINTF("bal rr\n");
	*r1 = (SETNODE){cur->parent, cur, r2, 0};
	*cur = (SETNODE){r1, l1, l2, 0};
	fts_repair_sons_link(l2, cur);
	fts_repair_parents_link(r1, r1->parent, cur);
	fts_repair_node_height(cur);
	fts_repair_node_height(r1);
	fts_repair_parents_heights(r1->parent);
	return (r1);
}

static SETNODE		*bal_rl(t_ftset_node *cur
								, t_ftset_node *l1
								, t_ftset_node *r1
								, t_ftset_node *l2
								, t_ftset_node *r2)
{
	t_ftset_node	*l3;
	t_ftset_node	*r3;

	QPRINTF("bal rl\n");
	l3 = l2->l;
	r3 = l2->r;
	*l2 = (SETNODE){cur->parent, cur, r1, 0};
	*cur = (SETNODE){l2, l1, l3, 0};
	*r1 = (SETNODE){l2, r3, r2, 0};
	fts_repair_sons_link(l3, cur);
	fts_repair_sons_link(r3, r1);
	fts_repair_parents_link(l2, l2->parent, cur);
	fts_repair_node_height(r1);
	fts_repair_node_height(cur);
	fts_repair_node_height(l2);
	fts_repair_parents_heights(l2->parent);
	return (l2);
}

SETNODE			*fts_rebalance_node(t_ftset_node *cur)
{
	t_ftset_node	*l1;
	t_ftset_node	*r1;
	t_ftset_node	*l2;
	t_ftset_node	*r2;
	int				diff;

	l1 = cur->l;
	r1 = cur->r;
	diff = (l1 == NULL ? 0 : l1->height) - (r1 == NULL ? 0 : r1->height);
	if (diff > 1)
	{
		l2 = l1->l;
		r2 = l1->r;
		diff = (l2 == NULL ? 0 : l2->height) - (r2 == NULL ? 0 : r2->height);
		return (diff >= 0 ? bal_ll(ARGS) : bal_lr(ARGS));
	}
	else if (diff < -1)
	{
		l2 = r1->l;
		r2 = r1->r;
		diff = (l2 == NULL ? 0 : l2->height) - (r2 == NULL ? 0 : r2->height);
		return (diff <= 0 ? bal_rr(ARGS) : bal_rl(ARGS));
	}
	return (cur);
}
