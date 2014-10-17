
NNAME = ft
NAME = lib$(NNAME).a
CLNAME = l$(NNAME)

INCLUDE = ./includes
SRCPATH = srcs
OBJPATH = obj

CC = $(SILENCE)gcc
CFLAGS = -Wall -Werror -Wextra -O2
LIB = $(SILENCE)ar rc
RM = $(SILENCE)rm -rf

SRCSFILES = ft_putchar.c ft_putstr.c ft_putnbr.c ft_putendl.c \
	ft_putchar_fd.c ft_putstr_fd.c ft_putnbr_fd.c ft_putendl_fd.c \
	ft_isblank.c ft_isdigit.c ft_isxdigit.c ft_isspace.c ft_isgraph.c \
	ft_isupper.c ft_islower.c ft_isprint.c ft_isalnum.c ft_isalpha.c\
	ft_ispunct.c ft_iscntrl.c ft_isascii.c ft_tolower.c ft_toupper.c\
	ft_atoi.c \
	ft_revstr.c ft_pad_string.c \
	ft_lutoa.c ft_lutoa_d.c ft_itoa.c \
	ft_strcpy.c ft_strncpy.c ft_strlcpy.c ft_strcmp.c ft_strncmp.c \
	ft_strlen.c ft_strstr.c ft_strcat.c ft_strchr.c ft_strcspn.c ft_strncat.c \
	ft_strdup.c ft_memcpy.c ft_memset.c ft_bzero.c ft_strrchr.c ft_strnstr.c \
	ft_memcmp.c ft_memmove.c\
	ft_myassert.c ft_match.c ft_myputnchar.c ft_strjoin.c ft_strcharlen.c \
	ft_strnew.c ft_strclr.c ft_strequ.c ft_memalloc.c ft_memdel.c ft_strdel.c \
	ft_strjoinfree.c \
	ft_powi.c ft_sqrtfloor.c ft_pythai.c \
	ft_abs.c ft_div.c operations.c \
	ft_dbltype.c ft_getbitarray.c \
	ft_log2.c ft_log16.c ft_log10.c ft_ceil.c ft_floor.c \
	evlxpr_calculate.c evlxpr_list.c evlxpr_convert_chain.c ft_eval_expr.c

V = 1
SILENCE_1 :=
SILENCE_0 :=@
SILENCE = $(SILENCE_$(V))
SKIP_1 :=
SKIP_0 := \033[A
SKIP = $(SKIP_$(V))

C = \033[1;34m
U = $(C)[$(NAME)]----->\033[0m

SRC = $(addprefix $(SRCPATH)/,$(SRCSFILES))
OBJECTS = $(SRC:$(SRCPATH)/%.c=$(OBJPATH)/%.o)

all: $(NAME)

$(NAME):$(OBJECTS)
	@echo -e "$(U)$(C)[COMPILE:\033[1;32m DONE$(C)]\033[0m"
	@echo -e "$(U)$(C)[BUILD LIB]\033[0;32m"
	$(LIB) $(NAME) $(OBJECTS)
	@ranlib $(NAME)
	@echo -e "$(SKIP)$(U)$(C)[BUILD  :\033[1;32m DONE$(C)]\033[0m"

$(OBJECTS): $(OBJPATH)/%.o : $(SRCPATH)/%.c
	@echo -e "$(U)$(C)[COMPILE: \033[1;31m$<\033[A\033[0m"
	@echo -e "\033[0;32m"
	@mkdir -p $(dir $@)
	@$(CC) -o $@ $(CFLAGS) -I $(INCLUDE) -c $<
	@echo -e "\033[1;31m [.working.]"
	@echo -e "$(SKIP)\033[A\033[2K$(SKIP)"

clean:
	@echo -e "$(U)$(C)[CLEAN]\033[0;32m"
	$(RM) $(OBJPATH)
	@echo -e "$(SKIP)$(U)$(C)[CLEAN:\033[1;32m   DONE$(C)]\033[0m"

fclean: clean
	@echo -e "$(U)$(C)[F-CLEAN]\033[0;32m"
	$(RM) $(NAME)
	@echo -e "$(SKIP)$(U)$(C)[F-CLEAN:\033[1;32m DONE$(C)]\033[0m"

re: fclean all