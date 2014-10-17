
int	ft_powi(int n, unsigned int p)
{
	int	total;

	total = 1;
	while(p--)
		total *= n;
	return (total);
}