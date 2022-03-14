#include <stdio.h>
#include <limits.h>
#include "ft_printf_bonus.h"

int	main(void)
{
	printf(" %% ");
	printf(" %%%% ");
	printf(" %% %% %%");
	printf(" %%  %%  %%");
	printf(" %%   %%   %%");
	printf("%%");
	printf("%% %%");

	return (0);
}
