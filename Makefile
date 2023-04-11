# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fmoreira <fmoreira@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/06 01:37:52 by fmoreira          #+#    #+#              #
#    Updated: 2023/04/11 03:21:33 by fmoreira         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -Wall -Wextra -Werror -g3

RM = rm -rf
MLXF = -lX11 -lXext -lm -lz
LIBSMK = make -C
NAME = cub3d

SRC_DIR = ./srcs
SRC = main.c ft_map_check_00.c

OBJ_DIR = ./obj
OBJ = $(addprefix $(OBJ_DIR)/, $(SRC:.c=.o))

INC_DIR = ./include
INC = cub3d.h

LIBFT_DIR = ./lib/libft
LIBFT = ./lib/libft/libft.a

$(OBJ_DIR)/%.o:	$(SRC_DIR)/%.c
	mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -I $(INC_DIR) -c $< -o $@

all:	$(NAME)

$(NAME): $(LIBFT) $(MLX) $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) $(LIBFT) $(MLX) $(MLXF) -o $(NAME)

$(LIBFT):
	$(LIBSMK) $(LIBFT_DIR)

$(MLX):
	$(LIBSMK) $(MLX)
	
clean:
	$(RM) $(NAME)
	$(LIBSMK) $(LIBFT_DIR) clean

fclean: clean
	$(RM) $(NAME)
	$(LIBSMK) $(LIBFT_DIR) fclean

re: fclean all

.PHONY: re all clean fclean