# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sfernand <sfernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/08 11:58:37 by sfernand          #+#    #+#              #
#    Updated: 2018/11/21 00:09:29 by sfernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRC = ft_atoi.c \
ft_bzero.c \
ft_isascii.c \
ft_isalpha.c \
ft_isalnum.c \
ft_itoa.c \
ft_isprint.c \
ft_isdigit.c \
ft_memalloc.c \
ft_memccpy.c \
ft_memchr.c \
ft_memcmp.c \
ft_memdel.c \
ft_memcpy.c \
ft_putchar.c \
ft_putchar_fd.c \
ft_memmove.c \
ft_memset.c \
ft_putnbr.c \
ft_putnbr_fd.c \
ft_putendl_fd.c \
ft_putendl.c \
ft_putstr.c \
ft_putstr_fd.c \
ft_strclr.c \
ft_strcat.c \
ft_strchr.c \
ft_strdel.c \
ft_strcpy.c \
ft_strcmp.c \
ft_striter.c \
ft_strdup.c \
ft_striteri.c \
ft_strlcat.c \
ft_strlen.c \
ft_strequ.c \
ft_strmap.c \
ft_strmapi.c \
ft_strncat.c \
ft_strjoin.c \
ft_strncmp.c \
ft_strnew.c \
ft_strncpy.c \
ft_strnequ.c \
ft_strsplit.c \
ft_strrchr.c \
ft_strsub.c \
ft_tolower.c \
ft_strnstr.c \
ft_strstr.c \
ft_strtrim.c \
ft_toupper.c \
ft_sqrt.c \
ft_is_prime.c \
ft_strndup.c\
ft_countwords.c \
ft_swap.c \
ft_lstnew.c \
ft_lstdelone.c \
ft_lstdel.c \
ft_lstadd.c \
ft_lstiter.c \
ft_lstmap.c \

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<  -I .

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: clean fclean
