# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sfernand <sfernand@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/08 11:58:37 by sfernand          #+#    #+#              #
#    Updated: 2018/11/15 16:47:24 by sfernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libft.a
FLAGS = -Wall -Werror -Wextra
SRC = ft_strlen.c\
		
all: $(NAME)

$(NAME):
		gcc $(FLAGS) $(SRC)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean all
