/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cub3d.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fmoreira <fmoreira@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/06 03:02:32 by fmoreira          #+#    #+#             */
/*   Updated: 2023/04/11 03:32:57 by fmoreira         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PHILO_H
# define PHILO_H
# include "../lib/libft/libft.h"
# include <fcntl.h>
# include <stdio.h>

typedef struct s_map
{
	char	*north_path;
	char	*south_path;
	char	*west_path;
	char	*east_path;
	char	**map;
}	t_map;

int	ft_map_check(int fd_map);

#endif