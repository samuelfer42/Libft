/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sfernand <sfernand@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/17 12:52:53 by sfernand          #+#    #+#             */
/*   Updated: 2018/11/17 12:59:44 by sfernand         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char		*ft_strjoin(char const *s1, char const *s2)
{
	size_t	len;
	char	*str;
	size_t	i;
	size_t	j;

	if (s1 && s2)
	{
		len = ft_strlen(s1) + ft_strlen(s2) + 1;
		i = 0;
		j = 0;
		if ((str = (char *)malloc(sizeof(*str) * len)))
		{
			while (s1[i])
			{
				str[i] = s1[i];
				i++;
			}
			while (s2[j])
				str[i++] = s2[j++];
			str[i] = '\0';
			return (str);
		}
	}
	return (NULL);
}
