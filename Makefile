# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: knfonda <knfonda@student.21-school>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/28 09:04:40 by knfonda           #+#    #+#              #
#    Updated: 2020/11/05 12:46:54 by knfonda          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= ft_strlen.c ft_toupper.c ft_tolower.c\
		  ft_atoi.c ft_isprint.c ft_isascii.c\
		  ft_isalnum.c ft_isdigit.c ft_isalpha.c\
		  ft_memset.c ft_bzero.c ft_memcpy.c\
		  ft_memccpy.c ft_memmove.c ft_memchr.c\
		  ft_memcmp.c ft_strlcpy.c ft_strlcat.c\
		  ft_strchr.c ft_strrchr.c ft_strnstr.c\
		  ft_strncmp.c ft_strdup.c ft_calloc.c\
		  ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c\
		  ft_putnbr_fd.c ft_substr.c ft_strjoin.c ft_strtrim.c\
		  ft_split.c ft_itoa.c ft_strmapi.c

OBJS	= $(SRCS:.c=.o)

BONUS	=  ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c\
		   ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c\
		   ft_lstmap.c

B_OBJS	= $(BONUS:.c=.o)

NAME	= libft.a

GCC		= gcc

RM		= rm -f

AR		= ar rcs

CFLAGS	= -Wall -Werror -Wextra

all:		$(NAME)

.c.o:		
			$(GCC) $(CFLAGS) -c $< -o $(<:.c=.o)

$(NAME):	$(OBJS)
			$(AR) $(NAME) $(OBJS)

clean:		
			$(RM) $(OBJS) $(B_OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean $(NAME)

bonus:		$(OBJS) $(B_OBJS)
			$(AR) $(NAME) $(OBJS) $(B_OBJS)

.PHONY:		all clean fclean re bonus
