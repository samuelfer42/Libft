/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sfernand <sfernand@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/17 13:44:14 by sfernand          #+#    #+#             */
/*   Updated: 2018/11/17 13:46:09 by sfernand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putnbr_fd(int n, int fd)
{
	if (n < 0)
	{
		ft_putchar_fd('-');
		n = n * -1;
	}
	if ((n / 10) > 0) 
        ft_putnbr_fd(n / 10);
	ft_putchar_fd(n % 10 + '0');
	else
		ft_putchar_fd(n + '0');
}
