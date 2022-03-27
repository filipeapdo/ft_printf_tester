#include <stdio.h>
#include <limits.h>
#include "ft_printf_bonus.h"

int	main(void)
{
	int	i;
	int	j;
	// char *str = "NULL";

	i = 0;
	j = 0;

	// Overall syntax: %[$][flags][width][.precision][length modifier]conversion
	printf("\n\nOverall syntax: %%[$][flags][width][.precision][length modifier]conversion\n\n");

	printf("[%%c full test]\n\n");
	i = printf("   printf:|%c %c %c %c %c %c %c|\n", '3', '2', '0' - 256, '0' + 256, '1', 0, '0');
	j = ft_printf("ft_printf:|%c %c %c %c %c %c %c|\n", '3', '2', '0' - 256, '0' + 256, '1', 0, '0');
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%10c %11c %12c %13c %14c %15c %16c|\n", '3', '2', '0' - 256, '0' + 256, '1', 0, '0');
	j = ft_printf("ft_printf:|%10c %11c %12c %13c %14c %15c %16c|\n", '3', '2', '0' - 256, '0' + 256, '1', 0, '0');
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%-10c %-11c %-12c %-13c %-14c %-15c %-16c|\n", '3', '2', '0' - 256, '0' + 256, '1', 0, '0');
	j = ft_printf("ft_printf:|%-10c %-11c %-12c %-13c %-14c %-15c %-16c|\n", '3', '2', '0' - 256, '0' + 256, '1', 0, '0');
	printf("\n%d=%d\n\n", i, j);
	printf("\n\n");

	printf("[%%d full test]\n\n");
	i = printf("   printf:|%d %d %d %d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|%d %d %d %d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%-d %-d %-d %-d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|%-d %-d %-d %-d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%-10d %-11d %-12d %-13d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|%-10d %-11d %-12d %-13d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%0d %0d %0d %0d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|%0d %0d %0d %0d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%010d %011d %012d %013d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|%010d %011d %012d %013d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%10d %11d %12d %13d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|%10d %11d %12d %13d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%.10d %.11d %.12d %.13d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|%.10d %.11d %.12d %.13d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%-10.10d %-20.11d %-30.12d %-1.13d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|%-10.10d %-20.11d %-30.12d %-1.13d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%+d %+d %+d %+d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|%+d %+d %+d %+d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%+10d %+11d %+12d %+13d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|%+10d %+11d %+12d %+13d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%+-10d %+-11d %+-12d %+-13d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|%+-10d %+-11d %+-12d %+-13d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%+-10.10d %+-20.11d %+-30.12d %+-1.13d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|%+-10.10d %+-20.11d %+-30.12d %+-1.13d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|% d % d % d % d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|% d % d % d % d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|% 10d % 11d % 12d % 13d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|% 10d % 11d % 12d % 13d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|% -10d % -11d % -12d % -13d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|% -10d % -11d % -12d % -13d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|% -10.10d % -20.11d % -30.12d % -1.13d|\n", INT_MAX, INT_MIN, 0, -42);
	j = ft_printf("ft_printf:|% -10.10d % -20.11d % -30.12d % -1.13d|\n", INT_MAX, INT_MIN, 0, -42);
	printf("\n%d=%d\n\n", i, j);
	i = printf("   printf:|%.0d|\n", 0);
	j = ft_printf("ft_printf:|%.0d|\n", 0);
	printf("\n%d=%d\n\n", i, j);
	printf("\n\n");

	return (0);
}
