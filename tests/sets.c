
// #include <iostream>
#include "ft_debug.h"
#include "libft.h"
#include <stdlib.h>
#include "ft_set.h"

typedef struct		s_setint
{
	t_ftset_node	node;
	int				i;
}					t_setint;

int			cmpint(t_setint const *max, t_setint const *min)
{
	return (min->i - max->i);
}

#define GETINT(N) ((N) == NULL ? 42 : ((t_setint*)(N))->i)
#define NODE(V) ((t_ftset_node*)(t_setint[1]){(t_ftset_node){NULL, NULL, NULL, 0u}, (V)})
// #define NODE(V) ((t_setint[1]){fts_uninitialized(), (V)})

#define qprintf(...)

t_ui64		g_count = 0;

int		check_order_and_size(t_ftset  *s)
{
	t_ftset_node 			*node;
	t_setint 				*cur;
	int						prev = -1;
	int						tot = 0;

	node = fts_begin(s);
	while (node != NULL)
	{
		tot++;
		cur = (t_setint*)node;
		if (prev >= cur->i)
		{
			lprintf("BAD ORDER (%02dvs%02d)\n", prev, cur->i);
			return (1);
		}
		node = fts_next(node);
	}
	if (tot != s->size)
	{
		lprintf("SET SIZE IS BAD");
		return (1);
	}
	return (0);
}

int		check_heights(t_ftset *s)
{
	t_ftset_node 			*node;
	
	if (s->size > 0 && s->head->height != s->height)
	{
		lprintf("SET HEIGHT BAD");
		return (1);
	}
	node = fts_begin(s);
	qprintf("HEIGHTS: ");
	while (node != NULL)
	{
		
		int const		lh = node->l == NULL ? -1 : node->l->height;
		int const		rh = node->r == NULL ? -1 : node->r->height;
		int const		maxh_sons = MAX(lh, rh);
		
		qprintf("%02zu->", node->height);
		if ((maxh_sons == -1 && node->height != 1)
			|| (maxh_sons != -1 && node->height != maxh_sons + 1))
		{
			lprintf("FAILED with node(%02i)[h=%d]{%p}  l(%02i)[h=%d]{%p}  r(%02i)[h=%d]{%p}"
			, GETINT(node)
			, (int)node->height
			, node
			
			, GETINT(node->l)
			, node->l == NULL ? 42 : (int)node->l->height
			, node->l
			
			, GETINT(node->r)
			, node->r == NULL ? 42 : (int)node->r->height
			, node->r
			);
			return (1);
		}
		node = fts_next(node);
	}
	qprintf("\n");
	return (0);
}

void		print_set(t_ftset  *s)
{
	t_ftset_node 			*node;
	t_setint 				*cur;

	node = fts_begin(s);
	qprintf("VALUES : ");
	while (node != NULL)
	{
		cur = (t_setint*)node;
		qprintf("%02d->", cur->i, node);
		node = fts_next(node);
	}
	qprintf("\n");
}

#define MAXLVL 10

int		is_taken(int used[MAXLVL], int level, int const i)
{
	while (--level >= 0)
	{
		// qprintf("CMP: %d vs %d\n", used[level], i);
		if (used[level] == i)
			return (1);
	}
	return (0);
}
void build_set(t_ftset set[1], int used[MAXLVL], int const level)
{
	qprintf("\n");
	t_ftset_insertion	results[1];

	g_count++;
	fts_init_instance(set, sizeof(t_setint), &cmpint);
	int j;
	qprintf("GO: ");
	for (j = 0; j <= level; j++)
		qprintf("%d", used[j]);
	qprintf("\n");
	for (j = 0; j <= level; j++)
	{
		if (fts_insert(set, NODE(used[j]), results))
		{
			qprintf("EMEMBORDEL\n");
			exit(1);
		}
	}
	print_set(set);
	return ;
}

void test_all_comb(int used[MAXLVL], int const level)
{
	t_ftset				set[1];

	used[level] = 0;
	while (used[level] < MAXLVL)
	{
		// qprintf("lvl%d test%d\n", level, used[level]);
		if (!is_taken(used, level, used[level]))
		{
			build_set(set, used, level);
			if (check_order_and_size(set))
			{
				lprintf("ORDER BROKEN\n");
				exit(1);
			}
			if (check_heights(set))
			{
				lprintf("HEIGHTS BROKEN\n");
				exit(1);
			}
			fts_release(set, NULL);
			if (level < MAXLVL - 1)
				test_all_comb(used, level + 1);
		}
		// qprintf("\n");
		used[level]++;
	}
	return ;
}

int			main(void)
{
	t_ftset_insertion	results[1];
	t_ftset				set[1];
	int					ret;

	qprintf("hello world\n");
	// std::cout << "hello world\n";
	fts_init_instance(set, sizeof(t_setint), &cmpint);
	
	// ret = fts_insert(set, NODE(50), results);
	// qprintf("ret: %d ", ret);
	// print_set(set);
	// ret = fts_insert(set, NODE(40), results);
	// qprintf("ret: %d ", ret);
	// print_set(set);
	// ret = fts_insert(set, NODE(45), results);
	// qprintf("ret: %d ", ret);
	// print_set(set);
	// ret = fts_insert(set, NODE(42), results);
	// qprintf("ret: %d ", ret);
	// print_set(set);
	int					used[MAXLVL] = {0};

	test_all_comb(used, 0);
	lprintf("tests %llu combo", g_count);
	return (0);
}
