/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: knfonda <knfonda@student.21-school>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/31 11:31:57 by knfonda           #+#    #+#             */
/*   Updated: 2020/11/03 11:00:33 by knfonda          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*concat;
	int		t;

	t = 0;
	if (!s1 || !s2)
		return (NULL);
	concat = (char *)malloc(sizeof(char) * ft_strlen(s1) + ft_strlen(s2) + 1);
	if (concat == NULL)
		return (NULL);
	while (*s1)
		concat[t++] = *s1++;
	while (*s2)
		concat[t++] = *s2++;
	concat[t] = '\0';
	return (concat);
}
