# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sfernand <sfernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/08 11:58:37 by sfernand          #+#    #+#              #
#    Updated: 2018/11/15 17:06:46 by sfernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libft.a
FLAGS = -Wall -Werror -Wextra
SRC = ft_strlen.c \
	   ft_bzero.c \
	   ft_atoi.c \
	   ft_isalnum.c \
	   ft_isalpha.c \
	   ft_isascii.c \
	   ft_isdigit.c \
	   ft_isprint.c \
	   ft_memalloc.c \
	   ft_memcpy.c \
	   ft_memdel.c \
	   ft_memmove.c \
	   ft_memset.c \
	   ft_strcat.c \
	   ft_strclr.c \
	   ft_strcmp.c \
	   ft_strcpy.c \
	   ft_strdel.c \
	   ft_strdel.c \
	   ft_striter.c \
	   ft_striteri.c \
	   ft_strlen.c \
	   ft_strncat.c \
	   ft_strncmp.c \
	   ft_strncpy.c \
	   ft_strnew.c \
	   ft_tolower.c \
	   ft_toupper.c \


		
all: $(NAME)

$(NAME):
		gcc $(FLAGS) $(SRC)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean all
