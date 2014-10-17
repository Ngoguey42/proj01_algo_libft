
int	ft_match(char *s1, char *s2)
{
	if (*s1 == '\0' && *s2 == '\0')
		return (1);
	if (*s1 == '\0' && *s2 == '*')
		return (ft_match(s1, s2 + 1));
	if (*s1 != '\0' && *s1 == *s2)
		return (ft_match (s1 + 1, s2 + 1));
	if (*s1 != '\0' && *s2 == '*')
		return (ft_match(s1, s2 + 1) || ft_match (s1 + 1, s2));
	return (0);
}

/*
si je suis à la fin des deux: REUSSITE

si je suis à la fin de s1, et sur une étoile dans s2, j'avance s2.
si je suis à la fin de s1, et PAS sur une star in s2, FAIL

si s1 == s2, j'avance sur les deux. (quid des étoiles en haut?)

si je suis sur une star en s2, je tente d'avancer s2, pour inclure le moins de *s1 possible dans la star
si je suis sur une star en s2, je tente ENSUITE d'avancer s1, pour inclure un *s1 de plus dans la star;

*/