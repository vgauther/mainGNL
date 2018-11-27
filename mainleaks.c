/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vgauther <vgauther@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/21 16:20:38 by vgauther          #+#    #+#             */
/*   Updated: 2018/11/23 15:42:32 by vgauther         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <fcntl.h>
#include <stdio.h>
#include "get_next_line.h"

int		main(int argc, char **argv)
{
	int		fd;
	char	*str;

	fd = open(argv[1], O_RDONLY);
	while ((get_next_line(fd, &str)) == 1)
	{
		printf("%s\n", str);
		free(str);
	}
	while(1);
	return (0);
}
