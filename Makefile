# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lumorale <lumorale@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/14 12:26:10 by lumorale          #+#    #+#              #
#    Updated: 2023/03/14 16:45:18 by lumorale         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			=	libftprintf.a

CC				=	gcc
CFLAGS			=	-Wall -Werror -Wextra
RM				=	rm -f

SRCS			=	ft_printf.c \
					ft_putchar_counter.c \
					ft_putstr.c \
					ft_itoa.c \
					ft_itoa_unsigned.c \
					ft_hexa.c \

OBJS			=	$(SRCS:.c=.o)

all:			$(NAME)


$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS) $(LIBFT_NAME)

clean:
				$(RM) $(OBJS) 


fclean:			clean
				$(RM) $(NAME)

re:				fclean all

.PHONY:			all clean fclean re 
