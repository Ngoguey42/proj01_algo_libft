O_FILES :=	obj/srcs/endianness.o obj/srcs/ft_abs.o obj/srcs/ft_arg.o \
			obj/srcs/ft_containers_conversions.o \
			obj/srcs/ft_ctype/case_change.o obj/srcs/ft_ctype/ft_isalnum.o \
			obj/srcs/ft_ctype/ft_isalpha.o obj/srcs/ft_ctype/ft_isascii.o \
			obj/srcs/ft_ctype/ft_isblank.o obj/srcs/ft_ctype/ft_iscntrl.o \
			obj/srcs/ft_ctype/ft_isdigit.o obj/srcs/ft_ctype/ft_isdigit_base.o \
			obj/srcs/ft_ctype/ft_isescape.o obj/srcs/ft_ctype/ft_isgraph.o \
			obj/srcs/ft_ctype/ft_islower.o obj/srcs/ft_ctype/ft_isprint.o \
			obj/srcs/ft_ctype/ft_ispunct.o obj/srcs/ft_ctype/ft_isspace.o \
			obj/srcs/ft_ctype/ft_isunixspace.o obj/srcs/ft_ctype/ft_isupper.o \
			obj/srcs/ft_ctype/ft_isxdigit.o obj/srcs/ft_debug/ft_leaks.o \
			obj/srcs/ft_debug/ft_printt.o \
			obj/srcs/ft_debug/ft_printt_utility.o \
			obj/srcs/ft_debug/ft_printvar.o obj/srcs/ft_debug/lprintf.o \
			obj/srcs/ft_debug/qprintf.o obj/srcs/ft_dumpformat.o \
			obj/srcs/ft_list/ftl_conversions.o \
			obj/srcs/ft_list/ftl_destruction.o obj/srcs/ft_list/ftl_foreach.o \
			obj/srcs/ft_list/ftl_init.o obj/srcs/ft_list/ftl_insertions.o \
			obj/srcs/ft_list/ftl_splice.o obj/srcs/ft_max.o obj/srcs/ft_min.o \
			obj/srcs/ft_parseuinteger.o obj/srcs/ft_printf/add_color_flags.o \
			obj/srcs/ft_printf/add_color_tags.o \
			obj/srcs/ft_printf/build_bonuses.o \
			obj/srcs/ft_printf/build_chars_and_strings.o \
			obj/srcs/ft_printf/build_dec_float.o \
			obj/srcs/ft_printf/build_dec_float_nbr.o \
			obj/srcs/ft_printf/build_dependencies.o \
			obj/srcs/ft_printf/build_integers.o \
			obj/srcs/ft_printf/build_nonprintable_string.o \
			obj/srcs/ft_printf/build_nonprintable_string_deps.o \
			obj/srcs/ft_printf/build_uppercases.o \
			obj/srcs/ft_printf/build_uppercases2.o \
			obj/srcs/ft_printf/build_wchars_and_wstrings.o \
			obj/srcs/ft_printf/calc_return_value.o \
			obj/srcs/ft_printf/freemem.o obj/srcs/ft_printf/ft_ceil.o \
			obj/srcs/ft_printf/ft_dbltype.o obj/srcs/ft_printf/ft_floor.o \
			obj/srcs/ft_printf/ft_getprintf.o obj/srcs/ft_printf/ft_log10.o \
			obj/srcs/ft_printf/ft_pad_string.o obj/srcs/ft_printf/ft_printf.o \
			obj/srcs/ft_printf/ft_roundup_b10.o \
			obj/srcs/ft_printf/ft_vprintf.o obj/srcs/ft_printf/get_varg.o \
			obj/srcs/ft_printf/parse_format.o \
			obj/srcs/ft_printf/store_opt_1to5.o \
			obj/srcs/ft_printf/store_opt_6to8.o obj/srcs/ft_randf.o \
			obj/srcs/ft_set/fts_balance.o obj/srcs/ft_set/fts_balance_tools.o \
			obj/srcs/ft_set/fts_citerations.o \
			obj/srcs/ft_set/fts_destruction.o obj/srcs/ft_set/fts_foreach.o \
			obj/srcs/ft_set/fts_init.o obj/srcs/ft_set/fts_insert.o \
			obj/srcs/ft_set/fts_insert_tools.o \
			obj/srcs/ft_set/fts_iterations.o obj/srcs/ft_skipntype.o \
			obj/srcs/ft_skiptype.o obj/srcs/ft_stdio/ft_putchar.o \
			obj/srcs/ft_stdio/ft_putendl.o obj/srcs/ft_stdio/ft_putnbr.o \
			obj/srcs/ft_stdio/ft_putnbr_base.o obj/srcs/ft_stdio/ft_putnchar.o \
			obj/srcs/ft_stdio/ft_putstr.o obj/srcs/ft_stdlib/ft_atoi.o \
			obj/srcs/ft_stdlib/ft_atoi_base.o obj/srcs/ft_stdlib/ft_crealloc.o \
			obj/srcs/ft_stdlib/ft_itoa.o obj/srcs/ft_stdlib/ft_itoa_a.o \
			obj/srcs/ft_stdlib/ft_itoa_c.o obj/srcs/ft_stdlib/ft_lutoa.o \
			obj/srcs/ft_stdlib/ft_lutoa_a.o obj/srcs/ft_stdlib/ft_maxintlen.o \
			obj/srcs/ft_stdlib/ft_realloc.o obj/srcs/ft_stdlib/ft_revstr.o \
			obj/srcs/ft_stdlib/ft_utoa.o obj/srcs/ft_string/ft_bzero.o \
			obj/srcs/ft_string/ft_memalloc.o obj/srcs/ft_string/ft_memccpy.o \
			obj/srcs/ft_string/ft_memchr.o obj/srcs/ft_string/ft_memcmp.o \
			obj/srcs/ft_string/ft_memcpy.o obj/srcs/ft_string/ft_memdel.o \
			obj/srcs/ft_string/ft_memdup.o obj/srcs/ft_string/ft_memmove.o \
			obj/srcs/ft_string/ft_memset.o obj/srcs/ft_string/ft_strcat.o \
			obj/srcs/ft_string/ft_strccpy.o obj/srcs/ft_string/ft_strcharlen.o \
			obj/srcs/ft_string/ft_strchr.o obj/srcs/ft_string/ft_strclr.o \
			obj/srcs/ft_string/ft_strcmp.o obj/srcs/ft_string/ft_strcpy.o \
			obj/srcs/ft_string/ft_strcspn.o obj/srcs/ft_string/ft_strdel.o \
			obj/srcs/ft_string/ft_strdup.o obj/srcs/ft_string/ft_strequ.o \
			obj/srcs/ft_string/ft_strjoin.o \
			obj/srcs/ft_string/ft_strjoinfree.o \
			obj/srcs/ft_string/ft_strlcat.o obj/srcs/ft_string/ft_strlcpy.o \
			obj/srcs/ft_string/ft_strlen.o obj/srcs/ft_string/ft_strncat.o \
			obj/srcs/ft_string/ft_strncmp.o obj/srcs/ft_string/ft_strncpy.o \
			obj/srcs/ft_string/ft_strnequ.o obj/srcs/ft_string/ft_strnew.o \
			obj/srcs/ft_string/ft_strnstr.o obj/srcs/ft_string/ft_strrchr.o \
			obj/srcs/ft_string/ft_strspn.o obj/srcs/ft_string/ft_strstr.o \
			obj/srcs/ft_strlentype.o obj/srcs/ft_timeval.o \
			obj/srcs/ft_vector/ftv_add.o obj/srcs/ft_vector/ftv_capacity.o \
			obj/srcs/ft_vector/ftv_data.o obj/srcs/ft_vector/ftv_debug.o \
			obj/srcs/ft_vector/ftv_debug_print.o \
			obj/srcs/ft_vector/ftv_destruction.o obj/srcs/ft_vector/ftv_find.o \
			obj/srcs/ft_vector/ftv_foreach.o obj/srcs/ft_vector/ftv_init.o \
			obj/srcs/ft_vector/ftv_iteration.o obj/srcs/fterror.o \
			obj/srcs/ftstrerror.o obj/srcs/get_next_line.o

LIBS_DEPEND := 

libs:
.PHONY: libs



MAX_SOURCE_LEN := 47
obj/srcs/endianness.o: srcs/endianness.c | obj/srcs/
obj/srcs/ft_abs.o: srcs/ft_abs.c | obj/srcs/
obj/srcs/ft_arg.o: srcs/ft_arg.c include/ft_arg.h include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h | obj/srcs/
obj/srcs/ft_containers_conversions.o: srcs/ft_containers_conversions.c \
	include/ft_containers.h include/ft_ctype.h include/ft_list.h \
	include/ft_macroes.h include/ft_set.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/ft_vector.h include/libft.h | obj/srcs/
obj/srcs/ft_ctype/case_change.o: srcs/ft_ctype/case_change.c \
	| obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_isalnum.o: srcs/ft_ctype/ft_isalnum.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_isalpha.o: srcs/ft_ctype/ft_isalpha.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_isascii.o: srcs/ft_ctype/ft_isascii.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_isblank.o: srcs/ft_ctype/ft_isblank.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_iscntrl.o: srcs/ft_ctype/ft_iscntrl.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_isdigit.o: srcs/ft_ctype/ft_isdigit.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_isdigit_base.o: srcs/ft_ctype/ft_isdigit_base.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_isescape.o: srcs/ft_ctype/ft_isescape.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_isgraph.o: srcs/ft_ctype/ft_isgraph.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_islower.o: srcs/ft_ctype/ft_islower.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_isprint.o: srcs/ft_ctype/ft_isprint.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_ispunct.o: srcs/ft_ctype/ft_ispunct.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_isspace.o: srcs/ft_ctype/ft_isspace.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_isunixspace.o: srcs/ft_ctype/ft_isunixspace.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_isupper.o: srcs/ft_ctype/ft_isupper.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_ctype/
obj/srcs/ft_ctype/ft_isxdigit.o: srcs/ft_ctype/ft_isxdigit.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_ctype/
obj/srcs/ft_debug/ft_leaks.o: srcs/ft_debug/ft_leaks.c include/ft_ctype.h \
	include/ft_debug.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/ft_vector.h include/libft.h | obj/srcs/ft_debug/
obj/srcs/ft_debug/ft_printt.o: srcs/ft_debug/ft_printt.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	include/ft_debug.h include/ft_vector.h | obj/srcs/ft_debug/
obj/srcs/ft_debug/ft_printt_utility.o: srcs/ft_debug/ft_printt_utility.c \
	include/ft_ctype.h include/ft_debug.h include/ft_macroes.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/ft_vector.h include/libft.h \
	| obj/srcs/ft_debug/
obj/srcs/ft_debug/ft_printvar.o: srcs/ft_debug/ft_printvar.c \
	include/ft_ctype.h include/ft_debug.h include/ft_macroes.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/ft_vector.h include/libft.h \
	| obj/srcs/ft_debug/
obj/srcs/ft_debug/lprintf.o: srcs/ft_debug/lprintf.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_debug/
obj/srcs/ft_debug/qprintf.o: srcs/ft_debug/qprintf.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_debug/
obj/srcs/ft_dumpformat.o: srcs/ft_dumpformat.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	include/ft_debug.h include/ft_vector.h include/fterror.h | obj/srcs/
obj/srcs/ft_list/ftl_conversions.o: srcs/ft_list/ftl_conversions.c \
	include/ft_ctype.h include/ft_list.h include/ft_macroes.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_list/
obj/srcs/ft_list/ftl_destruction.o: srcs/ft_list/ftl_destruction.c \
	include/ft_ctype.h include/ft_list.h include/ft_macroes.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_list/
obj/srcs/ft_list/ftl_foreach.o: srcs/ft_list/ftl_foreach.c include/ft_ctype.h \
	include/ft_list.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_list/
obj/srcs/ft_list/ftl_init.o: srcs/ft_list/ftl_init.c include/ft_ctype.h \
	include/ft_list.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_list/
obj/srcs/ft_list/ftl_insertions.o: srcs/ft_list/ftl_insertions.c \
	include/ft_ctype.h include/ft_list.h include/ft_macroes.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_list/
obj/srcs/ft_list/ftl_splice.o: srcs/ft_list/ftl_splice.c include/ft_ctype.h \
	include/ft_list.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h include/fterror.h | obj/srcs/ft_list/
obj/srcs/ft_max.o: srcs/ft_max.c | obj/srcs/
obj/srcs/ft_min.o: srcs/ft_min.c | obj/srcs/
obj/srcs/ft_parseuinteger.o: srcs/ft_parseuinteger.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h | obj/srcs/
obj/srcs/ft_printf/add_color_flags.o: srcs/ft_printf/add_color_flags.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/add_color_tags.o: srcs/ft_printf/add_color_tags.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/build_bonuses.o: srcs/ft_printf/build_bonuses.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/build_chars_and_strings.o: \
	srcs/ft_printf/build_chars_and_strings.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_printf/
obj/srcs/ft_printf/build_dec_float.o: srcs/ft_printf/build_dec_float.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/build_dec_float_nbr.o: srcs/ft_printf/build_dec_float_nbr.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/build_dependencies.o: srcs/ft_printf/build_dependencies.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/build_integers.o: srcs/ft_printf/build_integers.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/build_nonprintable_string.o: \
	srcs/ft_printf/build_nonprintable_string.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_printf/
obj/srcs/ft_printf/build_nonprintable_string_deps.o: \
	srcs/ft_printf/build_nonprintable_string_deps.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_printf/
obj/srcs/ft_printf/build_uppercases.o: srcs/ft_printf/build_uppercases.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/build_uppercases2.o: srcs/ft_printf/build_uppercases2.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/build_wchars_and_wstrings.o: \
	srcs/ft_printf/build_wchars_and_wstrings.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_printf/
obj/srcs/ft_printf/calc_return_value.o: srcs/ft_printf/calc_return_value.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/freemem.o: srcs/ft_printf/freemem.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_printf/
obj/srcs/ft_printf/ft_ceil.o: srcs/ft_printf/ft_ceil.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	include/ft_printf.h include/ft_printfdefs.h | obj/srcs/ft_printf/
obj/srcs/ft_printf/ft_dbltype.o: srcs/ft_printf/ft_dbltype.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h include/ft_dbltype.h | obj/srcs/ft_printf/
obj/srcs/ft_printf/ft_floor.o: srcs/ft_printf/ft_floor.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	include/ft_printf.h include/ft_printfdefs.h | obj/srcs/ft_printf/
obj/srcs/ft_printf/ft_getprintf.o: srcs/ft_printf/ft_getprintf.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/ft_log10.o: srcs/ft_printf/ft_log10.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	include/ft_printf.h include/ft_printfdefs.h include/ft_dbltype.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/ft_pad_string.o: srcs/ft_printf/ft_pad_string.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_printf/
obj/srcs/ft_printf/ft_printf.o: srcs/ft_printf/ft_printf.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_printf/
obj/srcs/ft_printf/ft_roundup_b10.o: srcs/ft_printf/ft_roundup_b10.c \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/ft_vprintf.o: srcs/ft_printf/ft_vprintf.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/get_varg.o: srcs/ft_printf/get_varg.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_printf/
obj/srcs/ft_printf/parse_format.o: srcs/ft_printf/parse_format.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/store_opt_1to5.o: srcs/ft_printf/store_opt_1to5.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_printf/store_opt_6to8.o: srcs/ft_printf/store_opt_6to8.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_printf.h \
	include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_printf/
obj/srcs/ft_randf.o: srcs/ft_randf.c | obj/srcs/
obj/srcs/ft_set/fts_balance.o: srcs/ft_set/fts_balance.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_set.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_set/
obj/srcs/ft_set/fts_balance_tools.o: srcs/ft_set/fts_balance_tools.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_set.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_set/
obj/srcs/ft_set/fts_citerations.o: srcs/ft_set/fts_citerations.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_set.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_set/
obj/srcs/ft_set/fts_destruction.o: srcs/ft_set/fts_destruction.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_set.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_set/
obj/srcs/ft_set/fts_foreach.o: srcs/ft_set/fts_foreach.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_set.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_set/
obj/srcs/ft_set/fts_init.o: srcs/ft_set/fts_init.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_set.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_set/
obj/srcs/ft_set/fts_insert.o: srcs/ft_set/fts_insert.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_set.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_set/
obj/srcs/ft_set/fts_insert_tools.o: srcs/ft_set/fts_insert_tools.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_set.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_set/
obj/srcs/ft_set/fts_iterations.o: srcs/ft_set/fts_iterations.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_set.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h | obj/srcs/ft_set/
obj/srcs/ft_skipntype.o: srcs/ft_skipntype.c | obj/srcs/
obj/srcs/ft_skiptype.o: srcs/ft_skiptype.c | obj/srcs/
obj/srcs/ft_stdio/ft_putchar.o: srcs/ft_stdio/ft_putchar.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_stdio/
obj/srcs/ft_stdio/ft_putendl.o: srcs/ft_stdio/ft_putendl.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_stdio/
obj/srcs/ft_stdio/ft_putnbr.o: srcs/ft_stdio/ft_putnbr.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_stdio/
obj/srcs/ft_stdio/ft_putnbr_base.o: srcs/ft_stdio/ft_putnbr_base.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_stdio/
obj/srcs/ft_stdio/ft_putnchar.o: srcs/ft_stdio/ft_putnchar.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_stdio/
obj/srcs/ft_stdio/ft_putstr.o: srcs/ft_stdio/ft_putstr.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_stdio/
obj/srcs/ft_stdlib/ft_atoi.o: srcs/ft_stdlib/ft_atoi.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_stdlib/
obj/srcs/ft_stdlib/ft_atoi_base.o: srcs/ft_stdlib/ft_atoi_base.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_stdlib/
obj/srcs/ft_stdlib/ft_crealloc.o: srcs/ft_stdlib/ft_crealloc.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_stdlib/
obj/srcs/ft_stdlib/ft_itoa.o: srcs/ft_stdlib/ft_itoa.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_stdlib/
obj/srcs/ft_stdlib/ft_itoa_a.o: srcs/ft_stdlib/ft_itoa_a.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_stdlib/
obj/srcs/ft_stdlib/ft_itoa_c.o: srcs/ft_stdlib/ft_itoa_c.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_stdlib/
obj/srcs/ft_stdlib/ft_lutoa.o: srcs/ft_stdlib/ft_lutoa.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_stdlib/
obj/srcs/ft_stdlib/ft_lutoa_a.o: srcs/ft_stdlib/ft_lutoa_a.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_stdlib/
obj/srcs/ft_stdlib/ft_maxintlen.o: srcs/ft_stdlib/ft_maxintlen.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_stdlib/
obj/srcs/ft_stdlib/ft_realloc.o: srcs/ft_stdlib/ft_realloc.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_stdlib/
obj/srcs/ft_stdlib/ft_revstr.o: srcs/ft_stdlib/ft_revstr.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_stdlib/
obj/srcs/ft_stdlib/ft_utoa.o: srcs/ft_stdlib/ft_utoa.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_stdlib/
obj/srcs/ft_string/ft_bzero.o: srcs/ft_string/ft_bzero.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_memalloc.o: srcs/ft_string/ft_memalloc.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_memccpy.o: srcs/ft_string/ft_memccpy.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_memchr.o: srcs/ft_string/ft_memchr.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_memcmp.o: srcs/ft_string/ft_memcmp.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_memcpy.o: srcs/ft_string/ft_memcpy.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_memdel.o: srcs/ft_string/ft_memdel.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_memdup.o: srcs/ft_string/ft_memdup.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_memmove.o: srcs/ft_string/ft_memmove.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_memset.o: srcs/ft_string/ft_memset.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_strcat.o: srcs/ft_string/ft_strcat.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_strccpy.o: srcs/ft_string/ft_strccpy.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_strcharlen.o: srcs/ft_string/ft_strcharlen.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_strchr.o: srcs/ft_string/ft_strchr.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_strclr.o: srcs/ft_string/ft_strclr.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_strcmp.o: srcs/ft_string/ft_strcmp.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_strcpy.o: srcs/ft_string/ft_strcpy.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_strcspn.o: srcs/ft_string/ft_strcspn.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_strdel.o: srcs/ft_string/ft_strdel.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_strdup.o: srcs/ft_string/ft_strdup.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_strequ.o: srcs/ft_string/ft_strequ.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_strjoin.o: srcs/ft_string/ft_strjoin.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_strjoinfree.o: srcs/ft_string/ft_strjoinfree.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_strlcat.o: srcs/ft_string/ft_strlcat.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_strlcpy.o: srcs/ft_string/ft_strlcpy.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_strlen.o: srcs/ft_string/ft_strlen.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_strncat.o: srcs/ft_string/ft_strncat.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_strncmp.o: srcs/ft_string/ft_strncmp.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_strncpy.o: srcs/ft_string/ft_strncpy.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_strnequ.o: srcs/ft_string/ft_strnequ.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_strnew.o: srcs/ft_string/ft_strnew.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_strnstr.o: srcs/ft_string/ft_strnstr.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_strrchr.o: srcs/ft_string/ft_strrchr.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/ft_string/
obj/srcs/ft_string/ft_strspn.o: srcs/ft_string/ft_strspn.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_string/ft_strstr.o: srcs/ft_string/ft_strstr.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h \
	| obj/srcs/ft_string/
obj/srcs/ft_strlentype.o: srcs/ft_strlentype.c | obj/srcs/
obj/srcs/ft_timeval.o: srcs/ft_timeval.c include/ft_timeval.h | obj/srcs/
obj/srcs/ft_vector/ftv_add.o: srcs/ft_vector/ftv_add.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/ft_vector.h \
	include/libft.h | obj/srcs/ft_vector/
obj/srcs/ft_vector/ftv_capacity.o: srcs/ft_vector/ftv_capacity.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/ft_vector.h include/libft.h | obj/srcs/ft_vector/
obj/srcs/ft_vector/ftv_data.o: srcs/ft_vector/ftv_data.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/ft_vector.h \
	include/libft.h | obj/srcs/ft_vector/
obj/srcs/ft_vector/ftv_debug.o: srcs/ft_vector/ftv_debug.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/ft_vector.h \
	include/libft.h include/ft_debug.h | obj/srcs/ft_vector/
obj/srcs/ft_vector/ftv_debug_print.o: srcs/ft_vector/ftv_debug_print.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/ft_vector.h include/libft.h include/ft_debug.h | obj/srcs/ft_vector/
obj/srcs/ft_vector/ftv_destruction.o: srcs/ft_vector/ftv_destruction.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/ft_vector.h include/libft.h | obj/srcs/ft_vector/
obj/srcs/ft_vector/ftv_find.o: srcs/ft_vector/ftv_find.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/ft_vector.h \
	include/libft.h | obj/srcs/ft_vector/
obj/srcs/ft_vector/ftv_foreach.o: srcs/ft_vector/ftv_foreach.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/ft_vector.h include/libft.h | obj/srcs/ft_vector/
obj/srcs/ft_vector/ftv_init.o: srcs/ft_vector/ftv_init.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/ft_vector.h \
	include/libft.h | obj/srcs/ft_vector/
obj/srcs/ft_vector/ftv_iteration.o: srcs/ft_vector/ftv_iteration.c \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/ft_vector.h include/libft.h | obj/srcs/ft_vector/
obj/srcs/fterror.o: srcs/fterror.c include/ft_ctype.h include/ft_macroes.h \
	include/ft_stdio.h include/ft_stdlib.h include/ft_string.h \
	include/ft_typedefs.h include/libft.h include/fterror.h | obj/srcs/
obj/srcs/ftstrerror.o: srcs/ftstrerror.c include/ft_ctype.h \
	include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h \
	include/ft_string.h include/ft_typedefs.h include/libft.h | obj/srcs/
obj/srcs/get_next_line.o: srcs/get_next_line.c include/get_next_line.h \
	include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h \
	include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h \
	include/libft.h | obj/srcs/
