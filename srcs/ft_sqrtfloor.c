
unsigned int	ft_sqrtfloor(unsigned int nb)
{
	int i;
	int result;

	result = 0;
	i = 0;
	while (result == 0)
	{
		if ((unsigned)i * i > nb)
		{
			result = i;
			i = nb;
		}
		else
			i++;
	}
	return (result - 1);
}