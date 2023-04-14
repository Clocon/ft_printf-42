# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lumorale <lumorale@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/14 12:26:10 by lumorale          #+#    #+#              #
#    Updated: 2023/03/31 18:06:37 by lumorale         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			=	libftprintf.a

CC				=	gcc
CFLAGS			=	-Wall -Werror -Wextra
RM				=	rm -f
AR				=	ar -rcs

#		COLORS		#
CYELLOW			=\033[1;33m
CGREEN			=\033[0;32m
CRED			=\033[0;91m
PURPLE			=\033[0;35m
CRESET			=\033[0m

SRCS			=	src/ft_printf.c \
					src/ft_putchar_counter.c \
					src/ft_putstr.c \
					src/ft_itoa.c \
					src/ft_itoa_unsigned.c \
					src/ft_hexa.c \

OBJS			=	$(SRCS:.c=.o)

all:			$(NAME)

%.o: %.c
				@$(CC) $(CFLAGS) -c $< -o $@

$(NAME):		$(OBJS)
				@$(AR) $(NAME) $(OBJS)
				@echo "\n$(CYELLOW)$(NAME) $(PURPLE)-> $(CGREEN) compiled$(CRESET)"

clean:
				@$(RM) $(OBJS)
				@echo "${CYELLOW}${NAME} $(PURPLE)-> ${CRED} objects files were deleted.${CRESET}"


fclean:			clean 
				@$(RM) $(NAME)
				@echo "${CYELLOW}${NAME} $(PURPLE)-> ${CRED} was deleted.${CRESET}"


re:				fclean all

.PHONY:			all clean fclean re
