/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fde-souz <fde-souz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/07 12:51:09 by fde-souz          #+#    #+#             */
/*   Updated: 2018/11/21 16:31:25 by vgauther         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# define BUFF_SIZE 64
# define ENDL '\n'
# include <strings.h>
# include <stdlib.h>
# include <unistd.h>

typedef struct	s_list
{
	void			*content;
	size_t			content_size;
	struct s_list	*next;
}				t_list;

typedef struct	s_struc_atol
{
	long int	rslt;
	long int	*hexa;
	int			cmp;
	int			power;
}				t_struct_atol;

int				get_next_line(const int fd, char **line);

#endif
