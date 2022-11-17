# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ehoundey <ehoundey@student.21-school.ru    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/21 12:21:58 by ehoundey          #+#    #+#              #
#    Updated: 2022/02/21 21:39:22 by ehoundey         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC 			= gcc

RM 			= rm -rf

NAME 		= pipex

SDIR 		= ./srcs/

SRC 		=	pipex.c				\
				pipex_utils.c		\
				ft_split.c			\
				libft.c				\
		

IDIR 		= ./includes/

CFLAGS 		= -Wall -Wextra -Werror -g


SRCS 		= $(addprefix $(SDIR), $(SRC)) ./srcs/pipex.c

OBJDIR 		= ./objs
OBJS 		= $(OBJDIR)/*.o

all:		$(NAME)

$(NAME):		$(OBJS)
			$(CC) $(CFLAGS) -I $(IDIR) $(OBJS) -o $(NAME)

$(OBJS):		$(SRCS)
			@$(CC) -c $(CFLAGS) $(SRCS)
			rm -rf ./objs; mkdir ./objs
			mv *.o $(OBJDIR)

clean:
			$(RM) $(OBJS)

fclean: 		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all, clean, fclean, re
