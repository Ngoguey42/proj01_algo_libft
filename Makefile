#
# libft.a
#
# Makefile
#

#
# Config
#

# Project name
NAME := libft.a

# Project directories
DIRS := includes srcs

# Obj directory
O_DIR := obj

# Makefiles to call (directory)
LIBS := 

# Modules to init (directory)
MODULES := 

# Number of threads
THREADS := 8

# C compiler
C_CC := clang

# Linking compiler
LD_CC := ar

# C flags
C_FLAGS := -Wall -Wextra -Werror -O2 -g

# Linking flags
LD_FLAGS := rcs

# C include flags
C_HEADS := -I includes

#
# Internal
#

O_FILES := obj/srcs/ft_abs.o \
	obj/srcs/ft_containers_conversions.o \
	obj/srcs/ft_max.o \
	obj/srcs/ft_min.o \
	obj/srcs/ft_parseuinteger.o \
	obj/srcs/ft_randf.o \
	obj/srcs/ft_skipntype.o \
	obj/srcs/ft_skiptype.o \
	obj/srcs/ft_strlentype.o \
	obj/srcs/ft_timeval.o \
	obj/srcs/fterror.o \
	obj/srcs/get_next_line.o \
	obj/srcs/ft_ctype/case_change.o \
	obj/srcs/ft_ctype/ft_isalnum.o \
	obj/srcs/ft_ctype/ft_isalpha.o \
	obj/srcs/ft_ctype/ft_isascii.o \
	obj/srcs/ft_ctype/ft_isblank.o \
	obj/srcs/ft_ctype/ft_iscntrl.o \
	obj/srcs/ft_ctype/ft_isdigit.o \
	obj/srcs/ft_ctype/ft_isdigit_base.o \
	obj/srcs/ft_ctype/ft_isescape.o \
	obj/srcs/ft_ctype/ft_isgraph.o \
	obj/srcs/ft_ctype/ft_islower.o \
	obj/srcs/ft_ctype/ft_isprint.o \
	obj/srcs/ft_ctype/ft_ispunct.o \
	obj/srcs/ft_ctype/ft_isspace.o \
	obj/srcs/ft_ctype/ft_isunixspace.o \
	obj/srcs/ft_ctype/ft_isupper.o \
	obj/srcs/ft_ctype/ft_isxdigit.o \
	obj/srcs/ft_debug/ft_leaks.o \
	obj/srcs/ft_debug/ft_printt.o \
	obj/srcs/ft_debug/ft_printt_utility.o \
	obj/srcs/ft_debug/ft_printvar.o \
	obj/srcs/ft_debug/lprintf.o \
	obj/srcs/ft_debug/qprintf.o \
	obj/srcs/ft_list/ftl_conversions.o \
	obj/srcs/ft_list/ftl_destruction.o \
	obj/srcs/ft_list/ftl_foreach.o \
	obj/srcs/ft_list/ftl_init.o \
	obj/srcs/ft_list/ftl_insertions.o \
	obj/srcs/ft_list/ftl_splice.o \
	obj/srcs/ft_set/fts_balance.o \
	obj/srcs/ft_set/fts_balance_tools.o \
	obj/srcs/ft_set/fts_citerations.o \
	obj/srcs/ft_set/fts_destruction.o \
	obj/srcs/ft_set/fts_foreach.o \
	obj/srcs/ft_set/fts_init.o \
	obj/srcs/ft_set/fts_insert.o \
	obj/srcs/ft_set/fts_insert_tools.o \
	obj/srcs/ft_set/fts_iterations.o \
	obj/srcs/ft_stdio/ft_putchar.o \
	obj/srcs/ft_stdio/ft_putendl.o \
	obj/srcs/ft_stdio/ft_putnbr.o \
	obj/srcs/ft_stdio/ft_putnbr_base.o \
	obj/srcs/ft_stdio/ft_putnchar.o \
	obj/srcs/ft_stdio/ft_putstr.o \
	obj/srcs/ft_stdlib/ft_atoi.o \
	obj/srcs/ft_stdlib/ft_atoi_base.o \
	obj/srcs/ft_stdlib/ft_crealloc.o \
	obj/srcs/ft_stdlib/ft_itoa.o \
	obj/srcs/ft_stdlib/ft_itoa_a.o \
	obj/srcs/ft_stdlib/ft_itoa_c.o \
	obj/srcs/ft_stdlib/ft_lutoa.o \
	obj/srcs/ft_stdlib/ft_lutoa_a.o \
	obj/srcs/ft_stdlib/ft_maxintlen.o \
	obj/srcs/ft_stdlib/ft_realloc.o \
	obj/srcs/ft_stdlib/ft_revstr.o \
	obj/srcs/ft_stdlib/ft_utoa.o \
	obj/srcs/ft_string/ft_bzero.o \
	obj/srcs/ft_string/ft_memalloc.o \
	obj/srcs/ft_string/ft_memccpy.o \
	obj/srcs/ft_string/ft_memchr.o \
	obj/srcs/ft_string/ft_memcmp.o \
	obj/srcs/ft_string/ft_memcpy.o \
	obj/srcs/ft_string/ft_memdel.o \
	obj/srcs/ft_string/ft_memdup.o \
	obj/srcs/ft_string/ft_memmove.o \
	obj/srcs/ft_string/ft_memset.o \
	obj/srcs/ft_string/ft_strcat.o \
	obj/srcs/ft_string/ft_strccpy.o \
	obj/srcs/ft_string/ft_strcharlen.o \
	obj/srcs/ft_string/ft_strchr.o \
	obj/srcs/ft_string/ft_strclr.o \
	obj/srcs/ft_string/ft_strcmp.o \
	obj/srcs/ft_string/ft_strcpy.o \
	obj/srcs/ft_string/ft_strcspn.o \
	obj/srcs/ft_string/ft_strdel.o \
	obj/srcs/ft_string/ft_strdup.o \
	obj/srcs/ft_string/ft_strequ.o \
	obj/srcs/ft_string/ft_strjoin.o \
	obj/srcs/ft_string/ft_strjoinfree.o \
	obj/srcs/ft_string/ft_strlcat.o \
	obj/srcs/ft_string/ft_strlcpy.o \
	obj/srcs/ft_string/ft_strlen.o \
	obj/srcs/ft_string/ft_strncat.o \
	obj/srcs/ft_string/ft_strncmp.o \
	obj/srcs/ft_string/ft_strncpy.o \
	obj/srcs/ft_string/ft_strnequ.o \
	obj/srcs/ft_string/ft_strnew.o \
	obj/srcs/ft_string/ft_strnstr.o \
	obj/srcs/ft_string/ft_strrchr.o \
	obj/srcs/ft_string/ft_strspn.o \
	obj/srcs/ft_string/ft_strstr.o \
	obj/srcs/ft_vector/ftv_add.o \
	obj/srcs/ft_vector/ftv_capacity.o \
	obj/srcs/ft_vector/ftv_data.o \
	obj/srcs/ft_vector/ftv_debug.o \
	obj/srcs/ft_vector/ftv_debug_print.o \
	obj/srcs/ft_vector/ftv_destruction.o \
	obj/srcs/ft_vector/ftv_find.o \
	obj/srcs/ft_vector/ftv_foreach.o \
	obj/srcs/ft_vector/ftv_init.o \
	obj/srcs/ft_vector/ftv_iteration.o

O_DIRS := obj/srcs/ft_vector obj/srcs/ft_string obj/srcs/ft_stdlib obj/srcs/ft_stdio obj/srcs/ft_set obj/srcs/ft_list obj/srcs/ft_debug obj/srcs/ft_ctype obj/srcs

MSG_0 := printf '\033[0;32m%-37.37s\033[0;0m\r'
MSG_1 := printf '\033[0;31m%-37.37s\033[0;0m\n'
MSG_END := printf '\n'

.SILENT:

all: $(addsuffix /.git,$(MODULES)) $(LIBS)
	@make -j$(THREADS) $(NAME)
.PHONY: all

$(NAME): $(O_FILES)
	@$(MSG_0) $@ ; $(LD_CC) $(LD_FLAGS) $@ $(O_FILES) && $(MSG_END) || $(MSG_1) $@

obj/srcs/ft_abs.o: srcs/ft_abs.c | obj/srcs
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_containers_conversions.o: srcs/ft_containers_conversions.c includes/ft_containers.h includes/ft_ctype.h includes/ft_list.h includes/ft_macroes.h includes/ft_set.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_max.o: srcs/ft_max.c | obj/srcs
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_min.o: srcs/ft_min.c | obj/srcs
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_parseuinteger.o: srcs/ft_parseuinteger.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_randf.o: srcs/ft_randf.c includes/ft_stdlib.h includes/ft_typedefs.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_skipntype.o: srcs/ft_skipntype.c | obj/srcs
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_skiptype.o: srcs/ft_skiptype.c | obj/srcs
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_strlentype.o: srcs/ft_strlentype.c | obj/srcs
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_timeval.o: srcs/ft_timeval.c includes/ft_timeval.h | obj/srcs
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/fterror.o: srcs/fterror.c includes/ft_ctype.h includes/ft_debug.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/fterror.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/get_next_line.o: srcs/get_next_line.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/get_next_line.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/case_change.o: srcs/ft_ctype/case_change.c | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_isalnum.o: srcs/ft_ctype/ft_isalnum.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_isalpha.o: srcs/ft_ctype/ft_isalpha.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_isascii.o: srcs/ft_ctype/ft_isascii.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_isblank.o: srcs/ft_ctype/ft_isblank.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_iscntrl.o: srcs/ft_ctype/ft_iscntrl.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_isdigit.o: srcs/ft_ctype/ft_isdigit.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_isdigit_base.o: srcs/ft_ctype/ft_isdigit_base.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_isescape.o: srcs/ft_ctype/ft_isescape.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_isgraph.o: srcs/ft_ctype/ft_isgraph.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_islower.o: srcs/ft_ctype/ft_islower.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_isprint.o: srcs/ft_ctype/ft_isprint.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_ispunct.o: srcs/ft_ctype/ft_ispunct.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_isspace.o: srcs/ft_ctype/ft_isspace.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_isunixspace.o: srcs/ft_ctype/ft_isunixspace.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_isupper.o: srcs/ft_ctype/ft_isupper.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_ctype/ft_isxdigit.o: srcs/ft_ctype/ft_isxdigit.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_ctype
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_debug/ft_leaks.o: srcs/ft_debug/ft_leaks.c includes/ft_ctype.h includes/ft_debug.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_debug
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_debug/ft_printt.o: srcs/ft_debug/ft_printt.c includes/ft_ctype.h includes/ft_debug.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_debug
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_debug/ft_printt_utility.o: srcs/ft_debug/ft_printt_utility.c includes/ft_ctype.h includes/ft_debug.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_debug
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_debug/ft_printvar.o: srcs/ft_debug/ft_printvar.c includes/ft_ctype.h includes/ft_debug.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_debug
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_debug/lprintf.o: srcs/ft_debug/lprintf.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_debug
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_debug/qprintf.o: srcs/ft_debug/qprintf.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_debug
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_list/ftl_conversions.o: srcs/ft_list/ftl_conversions.c includes/ft_ctype.h includes/ft_list.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_list
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_list/ftl_destruction.o: srcs/ft_list/ftl_destruction.c includes/ft_ctype.h includes/ft_list.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_list
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_list/ftl_foreach.o: srcs/ft_list/ftl_foreach.c includes/ft_ctype.h includes/ft_list.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_list
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_list/ftl_init.o: srcs/ft_list/ftl_init.c includes/ft_ctype.h includes/ft_list.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_list
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_list/ftl_insertions.o: srcs/ft_list/ftl_insertions.c includes/ft_ctype.h includes/ft_list.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_list
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_list/ftl_splice.o: srcs/ft_list/ftl_splice.c includes/ft_ctype.h includes/ft_debug.h includes/ft_list.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/fterror.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_list
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_set/fts_balance.o: srcs/ft_set/fts_balance.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_set.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_set
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_set/fts_balance_tools.o: srcs/ft_set/fts_balance_tools.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_set.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_set
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_set/fts_citerations.o: srcs/ft_set/fts_citerations.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_set.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_set
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_set/fts_destruction.o: srcs/ft_set/fts_destruction.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_set.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_set
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_set/fts_foreach.o: srcs/ft_set/fts_foreach.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_set.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_set
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_set/fts_init.o: srcs/ft_set/fts_init.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_set.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_set
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_set/fts_insert.o: srcs/ft_set/fts_insert.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_set.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_set
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_set/fts_insert_tools.o: srcs/ft_set/fts_insert_tools.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_set.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_set
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_set/fts_iterations.o: srcs/ft_set/fts_iterations.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_set.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_set
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdio/ft_putchar.o: srcs/ft_stdio/ft_putchar.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdio
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdio/ft_putendl.o: srcs/ft_stdio/ft_putendl.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdio
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdio/ft_putnbr.o: srcs/ft_stdio/ft_putnbr.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdio
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdio/ft_putnbr_base.o: srcs/ft_stdio/ft_putnbr_base.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdio
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdio/ft_putnchar.o: srcs/ft_stdio/ft_putnchar.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdio
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdio/ft_putstr.o: srcs/ft_stdio/ft_putstr.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdio
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdlib/ft_atoi.o: srcs/ft_stdlib/ft_atoi.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdlib
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdlib/ft_atoi_base.o: srcs/ft_stdlib/ft_atoi_base.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdlib
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdlib/ft_crealloc.o: srcs/ft_stdlib/ft_crealloc.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdlib
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdlib/ft_itoa.o: srcs/ft_stdlib/ft_itoa.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdlib
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdlib/ft_itoa_a.o: srcs/ft_stdlib/ft_itoa_a.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdlib
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdlib/ft_itoa_c.o: srcs/ft_stdlib/ft_itoa_c.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdlib
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdlib/ft_lutoa.o: srcs/ft_stdlib/ft_lutoa.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdlib
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdlib/ft_lutoa_a.o: srcs/ft_stdlib/ft_lutoa_a.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdlib
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdlib/ft_maxintlen.o: srcs/ft_stdlib/ft_maxintlen.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdlib
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdlib/ft_realloc.o: srcs/ft_stdlib/ft_realloc.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdlib
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdlib/ft_revstr.o: srcs/ft_stdlib/ft_revstr.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdlib
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_stdlib/ft_utoa.o: srcs/ft_stdlib/ft_utoa.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_stdlib
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_bzero.o: srcs/ft_string/ft_bzero.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_memalloc.o: srcs/ft_string/ft_memalloc.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_memccpy.o: srcs/ft_string/ft_memccpy.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_memchr.o: srcs/ft_string/ft_memchr.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_memcmp.o: srcs/ft_string/ft_memcmp.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_memcpy.o: srcs/ft_string/ft_memcpy.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_memdel.o: srcs/ft_string/ft_memdel.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_memdup.o: srcs/ft_string/ft_memdup.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_memmove.o: srcs/ft_string/ft_memmove.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_memset.o: srcs/ft_string/ft_memset.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strcat.o: srcs/ft_string/ft_strcat.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strccpy.o: srcs/ft_string/ft_strccpy.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strcharlen.o: srcs/ft_string/ft_strcharlen.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strchr.o: srcs/ft_string/ft_strchr.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strclr.o: srcs/ft_string/ft_strclr.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strcmp.o: srcs/ft_string/ft_strcmp.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strcpy.o: srcs/ft_string/ft_strcpy.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strcspn.o: srcs/ft_string/ft_strcspn.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strdel.o: srcs/ft_string/ft_strdel.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strdup.o: srcs/ft_string/ft_strdup.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strequ.o: srcs/ft_string/ft_strequ.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strjoin.o: srcs/ft_string/ft_strjoin.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strjoinfree.o: srcs/ft_string/ft_strjoinfree.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strlcat.o: srcs/ft_string/ft_strlcat.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strlcpy.o: srcs/ft_string/ft_strlcpy.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strlen.o: srcs/ft_string/ft_strlen.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strncat.o: srcs/ft_string/ft_strncat.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strncmp.o: srcs/ft_string/ft_strncmp.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strncpy.o: srcs/ft_string/ft_strncpy.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strnequ.o: srcs/ft_string/ft_strnequ.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strnew.o: srcs/ft_string/ft_strnew.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strnstr.o: srcs/ft_string/ft_strnstr.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strrchr.o: srcs/ft_string/ft_strrchr.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strspn.o: srcs/ft_string/ft_strspn.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_string/ft_strstr.o: srcs/ft_string/ft_strstr.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_string
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_vector/ftv_add.o: srcs/ft_vector/ftv_add.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_vector
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_vector/ftv_capacity.o: srcs/ft_vector/ftv_capacity.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_vector
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_vector/ftv_data.o: srcs/ft_vector/ftv_data.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_vector
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_vector/ftv_debug.o: srcs/ft_vector/ftv_debug.c includes/ft_ctype.h includes/ft_debug.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_vector
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_vector/ftv_debug_print.o: srcs/ft_vector/ftv_debug_print.c includes/ft_ctype.h includes/ft_debug.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_vector
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_vector/ftv_destruction.o: srcs/ft_vector/ftv_destruction.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_vector
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_vector/ftv_find.o: srcs/ft_vector/ftv_find.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_vector
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_vector/ftv_foreach.o: srcs/ft_vector/ftv_foreach.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_vector
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_vector/ftv_init.o: srcs/ft_vector/ftv_init.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_vector
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

obj/srcs/ft_vector/ftv_iteration.o: srcs/ft_vector/ftv_iteration.c includes/ft_ctype.h includes/ft_macroes.h includes/ft_stdio.h includes/ft_stdlib.h includes/ft_string.h includes/ft_typedefs.h includes/ft_vector.h includes/libft.h includes/t_bool_for_cpp_fu_42_norm_ffs.h | obj/srcs/ft_vector
	@$(MSG_0) $< ; clang $(C_FLAGS) $(C_HEADS) -c -o $@ $< || ($(MSG_1) $< && false)

$(LIBS):
	@make -C $@
.PHONY: $(LIBS)

$(addsuffix /.git,$(MODULES)):
	@git submodule init $(@:.git=)
	@git submodule update $(@:.git=)

$(O_DIRS):
	@mkdir -p $@ 2> /dev/null || true

clean:
	@rm -f $(O_FILES) 2> /dev/null || true
	@rmdir -p $(O_DIRS) $(O_DIR) 2> /dev/null || true
.PHONY: clean

fclean: clean
	@rm -f $(NAME)
.PHONY: fclean

re: fclean all
.PHONY: re
