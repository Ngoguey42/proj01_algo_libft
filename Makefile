
NNAME = ft
NAME = lib$(NNAME).a

INCLUDE = ./includes
SRCPATH = srcs
OBJPATH = obj

CC = gcc
CFLAGS = -Wall -Werror -Wextra
LIB = ar rc
RM = rm -rf

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

SRC = $(addprefix $(SRCPATH)/,$(SRCSFILES))
OBJECTS = $(SRC:$(SRCPATH)/%.c=$(OBJPATH)/%.o)

all: $(NAME)

$(NAME):$(OBJECTS)
	$(LIB) $(NAME) $(OBJECTS)
	ranlib $(NAME)

$(OBJECTS): $(OBJPATH)/%.o : $(SRCPATH)/%.c
	@mkdir -p $(dir $@)
	$(CC) -o $@ $(CFLAGS) -I $(INCLUDE) -c $<

clean:
	$(RM) $(OBJPATH)

fclean: clean
	$(RM) $(NAME)

re: fclean all