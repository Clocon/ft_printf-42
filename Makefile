# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lumorale <lumorale@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/14 12:26:10 by lumorale          #+#    #+#              #
#    Updated: 2023/03/30 13:19:02 by lumorale         ###   ########.fr        #
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
				@echo "\n$(CYELLOW)$(NAME) -> $(CGREEN) compiled$(CRESET)"

clean:
				@$(RM) $(OBJS)
				@echo "${CYELLOW}${NAME} $(CGREEN) -> ${CRED} objects files were deleted.${CRESET}"


fclean:			
				@$(RM) $(NAME)
				@echo "${CYELLOW}${NAME} $(CGREEN) -> ${CRED} was deleted.${CRESET}"


re:				fclean all

.PHONY:			all clean fclean re