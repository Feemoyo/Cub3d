/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fmoreira <fmoreira@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/06 02:32:27 by fmoreira          #+#    #+#             */
/*   Updated: 2023/04/11 03:20:40 by fmoreira         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3d.h"

int main(int argc, char **argv)
{
	int fd_map;
	
	fd_map = open(argv[1], O_RDONLY);
	if (argc != 2 || !ft_map_check(fd_map))
	{
		close(fd_map);
		write(1,"Please, insert a valid map *.cub!\n", 34);
		return (1);
	}
}