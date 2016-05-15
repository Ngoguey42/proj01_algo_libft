MKGEN_SRCSBIN_LFT :=\
	build/src/endianness.o\
	build/src/ft_abs.o\
	build/src/ft_arg.o\
	build/src/ft_containers_conversions.o\
	build/src/ft_dumpformat.o\
	build/src/ft_max.o\
	build/src/ft_min.o\
	build/src/ft_parseuinteger.o\
	build/src/ft_randf.o\
	build/src/ft_skipntype.o\
	build/src/ft_skiptype.o\
	build/src/ft_strlentype.o\
	build/src/ft_timeval.o\
	build/src/fterror.o\
	build/src/ftstrerror.o\
	build/src/ftwarning.o\
	build/src/get_next_line.o\
	build/src/ft_ctype/case_change.o\
	build/src/ft_ctype/ft_isalnum.o\
	build/src/ft_ctype/ft_isalpha.o\
	build/src/ft_ctype/ft_isascii.o\
	build/src/ft_ctype/ft_isblank.o\
	build/src/ft_ctype/ft_iscntrl.o\
	build/src/ft_ctype/ft_isdigit.o\
	build/src/ft_ctype/ft_isdigit_base.o\
	build/src/ft_ctype/ft_isescape.o\
	build/src/ft_ctype/ft_isgraph.o\
	build/src/ft_ctype/ft_islower.o\
	build/src/ft_ctype/ft_isprint.o\
	build/src/ft_ctype/ft_ispunct.o\
	build/src/ft_ctype/ft_isspace.o\
	build/src/ft_ctype/ft_isunixspace.o\
	build/src/ft_ctype/ft_isupper.o\
	build/src/ft_ctype/ft_isxdigit.o\
	build/src/ft_debug/ft_leaks.o\
	build/src/ft_debug/ft_printt.o\
	build/src/ft_debug/ft_printt_utility.o\
	build/src/ft_debug/ft_printvar.o\
	build/src/ft_debug/lprintf.o\
	build/src/ft_debug/qprintf.o\
	build/src/ft_list/ftl_conversions.o\
	build/src/ft_list/ftl_destruction.o\
	build/src/ft_list/ftl_foreach.o\
	build/src/ft_list/ftl_init.o\
	build/src/ft_list/ftl_insertions.o\
	build/src/ft_list/ftl_splice.o\
	build/src/ft_printf/add_color_flags.o\
	build/src/ft_printf/add_color_tags.o\
	build/src/ft_printf/build_bonuses.o\
	build/src/ft_printf/build_chars_and_strings.o\
	build/src/ft_printf/build_dec_float.o\
	build/src/ft_printf/build_dec_float_nbr.o\
	build/src/ft_printf/build_dependencies.o\
	build/src/ft_printf/build_integers.o\
	build/src/ft_printf/build_nonprintable_string.o\
	build/src/ft_printf/build_nonprintable_string_deps.o\
	build/src/ft_printf/build_uppercases.o\
	build/src/ft_printf/build_uppercases2.o\
	build/src/ft_printf/build_wchars_and_wstrings.o\
	build/src/ft_printf/calc_return_value.o\
	build/src/ft_printf/freemem.o\
	build/src/ft_printf/ft_ceil.o\
	build/src/ft_printf/ft_dbltype.o\
	build/src/ft_printf/ft_floor.o\
	build/src/ft_printf/ft_getprintf.o\
	build/src/ft_printf/ft_log10.o\
	build/src/ft_printf/ft_pad_string.o\
	build/src/ft_printf/ft_printf.o\
	build/src/ft_printf/ft_roundup_b10.o\
	build/src/ft_printf/ft_vprintf.o\
	build/src/ft_printf/get_varg.o\
	build/src/ft_printf/parse_format.o\
	build/src/ft_printf/store_opt_1to5.o\
	build/src/ft_printf/store_opt_6to8.o\
	build/src/ft_set/fts_balance.o\
	build/src/ft_set/fts_balance_tools.o\
	build/src/ft_set/fts_citerations.o\
	build/src/ft_set/fts_destruction.o\
	build/src/ft_set/fts_foreach.o\
	build/src/ft_set/fts_init.o\
	build/src/ft_set/fts_insert.o\
	build/src/ft_set/fts_insert_tools.o\
	build/src/ft_set/fts_iterations.o\
	build/src/ft_stdio/ft_putchar.o\
	build/src/ft_stdio/ft_putendl.o\
	build/src/ft_stdio/ft_putnbr.o\
	build/src/ft_stdio/ft_putnbr_base.o\
	build/src/ft_stdio/ft_putnchar.o\
	build/src/ft_stdio/ft_putstr.o\
	build/src/ft_stdlib/ft_atoi.o\
	build/src/ft_stdlib/ft_atoi_base.o\
	build/src/ft_stdlib/ft_crealloc.o\
	build/src/ft_stdlib/ft_itoa.o\
	build/src/ft_stdlib/ft_itoa_a.o\
	build/src/ft_stdlib/ft_itoa_c.o\
	build/src/ft_stdlib/ft_lutoa.o\
	build/src/ft_stdlib/ft_lutoa_a.o\
	build/src/ft_stdlib/ft_maxintlen.o\
	build/src/ft_stdlib/ft_realloc.o\
	build/src/ft_stdlib/ft_revstr.o\
	build/src/ft_stdlib/ft_utoa.o\
	build/src/ft_string/ft_bzero.o\
	build/src/ft_string/ft_memalloc.o\
	build/src/ft_string/ft_memccpy.o\
	build/src/ft_string/ft_memchr.o\
	build/src/ft_string/ft_memcmp.o\
	build/src/ft_string/ft_memcpy.o\
	build/src/ft_string/ft_memdel.o\
	build/src/ft_string/ft_memdup.o\
	build/src/ft_string/ft_memmove.o\
	build/src/ft_string/ft_memset.o\
	build/src/ft_string/ft_strcat.o\
	build/src/ft_string/ft_strccpy.o\
	build/src/ft_string/ft_strcharlen.o\
	build/src/ft_string/ft_strchr.o\
	build/src/ft_string/ft_strclr.o\
	build/src/ft_string/ft_strcmp.o\
	build/src/ft_string/ft_strcpy.o\
	build/src/ft_string/ft_strcspn.o\
	build/src/ft_string/ft_strdel.o\
	build/src/ft_string/ft_strdup.o\
	build/src/ft_string/ft_strequ.o\
	build/src/ft_string/ft_strjoin.o\
	build/src/ft_string/ft_strjoinfree.o\
	build/src/ft_string/ft_strlcat.o\
	build/src/ft_string/ft_strlcpy.o\
	build/src/ft_string/ft_strlen.o\
	build/src/ft_string/ft_strncat.o\
	build/src/ft_string/ft_strncmp.o\
	build/src/ft_string/ft_strncpy.o\
	build/src/ft_string/ft_strnequ.o\
	build/src/ft_string/ft_strnew.o\
	build/src/ft_string/ft_strnstr.o\
	build/src/ft_string/ft_strrchr.o\
	build/src/ft_string/ft_strspn.o\
	build/src/ft_string/ft_strstr.o\
	build/src/ft_vector/ftv_add.o\
	build/src/ft_vector/ftv_capacity.o\
	build/src/ft_vector/ftv_data.o\
	build/src/ft_vector/ftv_debug.o\
	build/src/ft_vector/ftv_debug_print.o\
	build/src/ft_vector/ftv_destruction.o\
	build/src/ft_vector/ftv_find.o\
	build/src/ft_vector/ftv_foreach.o\
	build/src/ft_vector/ftv_init.o\
	build/src/ft_vector/ftv_iteration.o
build/src/endianness.o: src/endianness.c | build/src/
build/src/ft_abs.o: src/ft_abs.c | build/src/
build/src/ft_arg.o: include/ft_arg.h include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_arg.c | build/src/
build/src/ft_containers_conversions.o: include/ft_arithmetic.h include/ft_containers.h include/ft_ctype.h include/ft_list.h include/ft_macroes.h include/ft_set.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_containers_conversions.c | build/src/
build/src/ft_dumpformat.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_debug.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/fterror.h include/libft.h include/libft_configuration.h src/ft_dumpformat.c | build/src/
build/src/ft_max.o: src/ft_max.c | build/src/
build/src/ft_min.o: src/ft_min.c | build/src/
build/src/ft_parseuinteger.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_parseuinteger.c | build/src/
build/src/ft_randf.o: src/ft_randf.c | build/src/
build/src/ft_skipntype.o: src/ft_skipntype.c | build/src/
build/src/ft_skiptype.o: src/ft_skiptype.c | build/src/
build/src/ft_strlentype.o: src/ft_strlentype.c | build/src/
build/src/ft_timeval.o: include/ft_timeval.h src/ft_timeval.c | build/src/
build/src/fterror.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/fterror.h include/libft.h include/libft_configuration.h src/fterror.c | build/src/
build/src/ftstrerror.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ftstrerror.c | build/src/
build/src/ftwarning.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/fterror.h include/libft.h include/libft_configuration.h src/ftwarning.c | build/src/
build/src/get_next_line.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/get_next_line.h include/libft.h include/libft_configuration.h src/get_next_line.c | build/src/
build/src/ft_ctype/case_change.o: src/ft_ctype/case_change.c | build/src/ft_ctype/
build/src/ft_ctype/ft_isalnum.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_isalnum.c | build/src/ft_ctype/
build/src/ft_ctype/ft_isalpha.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_isalpha.c | build/src/ft_ctype/
build/src/ft_ctype/ft_isascii.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_isascii.c | build/src/ft_ctype/
build/src/ft_ctype/ft_isblank.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_isblank.c | build/src/ft_ctype/
build/src/ft_ctype/ft_iscntrl.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_iscntrl.c | build/src/ft_ctype/
build/src/ft_ctype/ft_isdigit.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_isdigit.c | build/src/ft_ctype/
build/src/ft_ctype/ft_isdigit_base.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_isdigit_base.c | build/src/ft_ctype/
build/src/ft_ctype/ft_isescape.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_isescape.c | build/src/ft_ctype/
build/src/ft_ctype/ft_isgraph.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_isgraph.c | build/src/ft_ctype/
build/src/ft_ctype/ft_islower.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_islower.c | build/src/ft_ctype/
build/src/ft_ctype/ft_isprint.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_isprint.c | build/src/ft_ctype/
build/src/ft_ctype/ft_ispunct.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_ispunct.c | build/src/ft_ctype/
build/src/ft_ctype/ft_isspace.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_isspace.c | build/src/ft_ctype/
build/src/ft_ctype/ft_isunixspace.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_isunixspace.c | build/src/ft_ctype/
build/src/ft_ctype/ft_isupper.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_isupper.c | build/src/ft_ctype/
build/src/ft_ctype/ft_isxdigit.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_ctype/ft_isxdigit.c | build/src/ft_ctype/
build/src/ft_debug/ft_leaks.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_debug.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_debug/ft_leaks.c | build/src/ft_debug/
build/src/ft_debug/ft_printt.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_debug.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_debug/ft_printt.c | build/src/ft_debug/
build/src/ft_debug/ft_printt_utility.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_debug.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_debug/ft_printt_utility.c | build/src/ft_debug/
build/src/ft_debug/ft_printvar.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_debug.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_debug/ft_printvar.c | build/src/ft_debug/
build/src/ft_debug/lprintf.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_debug/lprintf.c | build/src/ft_debug/
build/src/ft_debug/qprintf.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_debug/qprintf.c | build/src/ft_debug/
build/src/ft_list/ftl_conversions.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_list.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_list/ftl_conversions.c | build/src/ft_list/
build/src/ft_list/ftl_destruction.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_list.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_list/ftl_destruction.c | build/src/ft_list/
build/src/ft_list/ftl_foreach.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_list.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_list/ftl_foreach.c | build/src/ft_list/
build/src/ft_list/ftl_init.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_list.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_list/ftl_init.c | build/src/ft_list/
build/src/ft_list/ftl_insertions.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_list.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_list/ftl_insertions.c | build/src/ft_list/
build/src/ft_list/ftl_splice.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_list.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/fterror.h include/libft.h include/libft_configuration.h src/ft_list/ftl_splice.c | build/src/ft_list/
build/src/ft_printf/add_color_flags.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/add_color_flags.c | build/src/ft_printf/
build/src/ft_printf/add_color_tags.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/add_color_tags.c | build/src/ft_printf/
build/src/ft_printf/build_bonuses.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/build_bonuses.c | build/src/ft_printf/
build/src/ft_printf/build_chars_and_strings.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/build_chars_and_strings.c | build/src/ft_printf/
build/src/ft_printf/build_dec_float.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/build_dec_float.c | build/src/ft_printf/
build/src/ft_printf/build_dec_float_nbr.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/build_dec_float_nbr.c | build/src/ft_printf/
build/src/ft_printf/build_dependencies.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/build_dependencies.c | build/src/ft_printf/
build/src/ft_printf/build_integers.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/build_integers.c | build/src/ft_printf/
build/src/ft_printf/build_nonprintable_string.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/build_nonprintable_string.c | build/src/ft_printf/
build/src/ft_printf/build_nonprintable_string_deps.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/build_nonprintable_string_deps.c | build/src/ft_printf/
build/src/ft_printf/build_uppercases.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/build_uppercases.c | build/src/ft_printf/
build/src/ft_printf/build_uppercases2.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/build_uppercases2.c | build/src/ft_printf/
build/src/ft_printf/build_wchars_and_wstrings.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/build_wchars_and_wstrings.c | build/src/ft_printf/
build/src/ft_printf/calc_return_value.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/calc_return_value.c | build/src/ft_printf/
build/src/ft_printf/freemem.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/freemem.c | build/src/ft_printf/
build/src/ft_printf/ft_ceil.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/ft_ceil.c | build/src/ft_printf/
build/src/ft_printf/ft_dbltype.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_dbltype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/ft_dbltype.c | build/src/ft_printf/
build/src/ft_printf/ft_floor.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/ft_floor.c | build/src/ft_printf/
build/src/ft_printf/ft_getprintf.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/ft_getprintf.c | build/src/ft_printf/
build/src/ft_printf/ft_log10.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_dbltype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/ft_log10.c | build/src/ft_printf/
build/src/ft_printf/ft_pad_string.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/ft_pad_string.c | build/src/ft_printf/
build/src/ft_printf/ft_printf.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/ft_printf.c | build/src/ft_printf/
build/src/ft_printf/ft_roundup_b10.o: src/ft_printf/ft_roundup_b10.c | build/src/ft_printf/
build/src/ft_printf/ft_vprintf.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/ft_vprintf.c | build/src/ft_printf/
build/src/ft_printf/get_varg.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/get_varg.c | build/src/ft_printf/
build/src/ft_printf/parse_format.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/parse_format.c | build/src/ft_printf/
build/src/ft_printf/store_opt_1to5.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/store_opt_1to5.c | build/src/ft_printf/
build/src/ft_printf/store_opt_6to8.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_printf.h include/ft_printfdefs.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_printf/store_opt_6to8.c | build/src/ft_printf/
build/src/ft_set/fts_balance.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_set.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_set/fts_balance.c | build/src/ft_set/
build/src/ft_set/fts_balance_tools.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_set.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_set/fts_balance_tools.c | build/src/ft_set/
build/src/ft_set/fts_citerations.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_set.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_set/fts_citerations.c | build/src/ft_set/
build/src/ft_set/fts_destruction.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_set.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_set/fts_destruction.c | build/src/ft_set/
build/src/ft_set/fts_foreach.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_set.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_set/fts_foreach.c | build/src/ft_set/
build/src/ft_set/fts_init.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_set.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_set/fts_init.c | build/src/ft_set/
build/src/ft_set/fts_insert.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_set.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_set/fts_insert.c | build/src/ft_set/
build/src/ft_set/fts_insert_tools.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_set.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_set/fts_insert_tools.c | build/src/ft_set/
build/src/ft_set/fts_iterations.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_set.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_set/fts_iterations.c | build/src/ft_set/
build/src/ft_stdio/ft_putchar.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdio/ft_putchar.c | build/src/ft_stdio/
build/src/ft_stdio/ft_putendl.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdio/ft_putendl.c | build/src/ft_stdio/
build/src/ft_stdio/ft_putnbr.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdio/ft_putnbr.c | build/src/ft_stdio/
build/src/ft_stdio/ft_putnbr_base.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdio/ft_putnbr_base.c | build/src/ft_stdio/
build/src/ft_stdio/ft_putnchar.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdio/ft_putnchar.c | build/src/ft_stdio/
build/src/ft_stdio/ft_putstr.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdio/ft_putstr.c | build/src/ft_stdio/
build/src/ft_stdlib/ft_atoi.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdlib/ft_atoi.c | build/src/ft_stdlib/
build/src/ft_stdlib/ft_atoi_base.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdlib/ft_atoi_base.c | build/src/ft_stdlib/
build/src/ft_stdlib/ft_crealloc.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdlib/ft_crealloc.c | build/src/ft_stdlib/
build/src/ft_stdlib/ft_itoa.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdlib/ft_itoa.c | build/src/ft_stdlib/
build/src/ft_stdlib/ft_itoa_a.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdlib/ft_itoa_a.c | build/src/ft_stdlib/
build/src/ft_stdlib/ft_itoa_c.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdlib/ft_itoa_c.c | build/src/ft_stdlib/
build/src/ft_stdlib/ft_lutoa.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdlib/ft_lutoa.c | build/src/ft_stdlib/
build/src/ft_stdlib/ft_lutoa_a.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdlib/ft_lutoa_a.c | build/src/ft_stdlib/
build/src/ft_stdlib/ft_maxintlen.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdlib/ft_maxintlen.c | build/src/ft_stdlib/
build/src/ft_stdlib/ft_realloc.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdlib/ft_realloc.c | build/src/ft_stdlib/
build/src/ft_stdlib/ft_revstr.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdlib/ft_revstr.c | build/src/ft_stdlib/
build/src/ft_stdlib/ft_utoa.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_stdlib/ft_utoa.c | build/src/ft_stdlib/
build/src/ft_string/ft_bzero.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_bzero.c | build/src/ft_string/
build/src/ft_string/ft_memalloc.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_memalloc.c | build/src/ft_string/
build/src/ft_string/ft_memccpy.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_memccpy.c | build/src/ft_string/
build/src/ft_string/ft_memchr.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_memchr.c | build/src/ft_string/
build/src/ft_string/ft_memcmp.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_memcmp.c | build/src/ft_string/
build/src/ft_string/ft_memcpy.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_memcpy.c | build/src/ft_string/
build/src/ft_string/ft_memdel.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_memdel.c | build/src/ft_string/
build/src/ft_string/ft_memdup.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_memdup.c | build/src/ft_string/
build/src/ft_string/ft_memmove.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_memmove.c | build/src/ft_string/
build/src/ft_string/ft_memset.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_memset.c | build/src/ft_string/
build/src/ft_string/ft_strcat.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strcat.c | build/src/ft_string/
build/src/ft_string/ft_strccpy.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strccpy.c | build/src/ft_string/
build/src/ft_string/ft_strcharlen.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strcharlen.c | build/src/ft_string/
build/src/ft_string/ft_strchr.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strchr.c | build/src/ft_string/
build/src/ft_string/ft_strclr.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strclr.c | build/src/ft_string/
build/src/ft_string/ft_strcmp.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strcmp.c | build/src/ft_string/
build/src/ft_string/ft_strcpy.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strcpy.c | build/src/ft_string/
build/src/ft_string/ft_strcspn.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strcspn.c | build/src/ft_string/
build/src/ft_string/ft_strdel.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strdel.c | build/src/ft_string/
build/src/ft_string/ft_strdup.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strdup.c | build/src/ft_string/
build/src/ft_string/ft_strequ.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strequ.c | build/src/ft_string/
build/src/ft_string/ft_strjoin.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strjoin.c | build/src/ft_string/
build/src/ft_string/ft_strjoinfree.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strjoinfree.c | build/src/ft_string/
build/src/ft_string/ft_strlcat.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strlcat.c | build/src/ft_string/
build/src/ft_string/ft_strlcpy.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strlcpy.c | build/src/ft_string/
build/src/ft_string/ft_strlen.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strlen.c | build/src/ft_string/
build/src/ft_string/ft_strncat.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strncat.c | build/src/ft_string/
build/src/ft_string/ft_strncmp.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strncmp.c | build/src/ft_string/
build/src/ft_string/ft_strncpy.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strncpy.c | build/src/ft_string/
build/src/ft_string/ft_strnequ.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strnequ.c | build/src/ft_string/
build/src/ft_string/ft_strnew.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strnew.c | build/src/ft_string/
build/src/ft_string/ft_strnstr.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strnstr.c | build/src/ft_string/
build/src/ft_string/ft_strrchr.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strrchr.c | build/src/ft_string/
build/src/ft_string/ft_strspn.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strspn.c | build/src/ft_string/
build/src/ft_string/ft_strstr.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/libft.h include/libft_configuration.h src/ft_string/ft_strstr.c | build/src/ft_string/
build/src/ft_vector/ftv_add.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_vector/ftv_add.c | build/src/ft_vector/
build/src/ft_vector/ftv_capacity.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_vector/ftv_capacity.c | build/src/ft_vector/
build/src/ft_vector/ftv_data.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_vector/ftv_data.c | build/src/ft_vector/
build/src/ft_vector/ftv_debug.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_debug.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_vector/ftv_debug.c | build/src/ft_vector/
build/src/ft_vector/ftv_debug_print.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_debug.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_vector/ftv_debug_print.c | build/src/ft_vector/
build/src/ft_vector/ftv_destruction.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_vector/ftv_destruction.c | build/src/ft_vector/
build/src/ft_vector/ftv_find.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_vector/ftv_find.c | build/src/ft_vector/
build/src/ft_vector/ftv_foreach.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_vector/ftv_foreach.c | build/src/ft_vector/
build/src/ft_vector/ftv_init.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_vector/ftv_init.c | build/src/ft_vector/
build/src/ft_vector/ftv_iteration.o: include/ft_arithmetic.h include/ft_ctype.h include/ft_macroes.h include/ft_stdio.h include/ft_stdlib.h include/ft_string.h include/ft_typedefs.h include/ft_vector.h include/libft.h include/libft_configuration.h src/ft_vector/ftv_iteration.c | build/src/ft_vector/
