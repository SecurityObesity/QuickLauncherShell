#include <stdio.h>
#include <stdlib.h>

/* comment */
#define clear() printf("\033[H\033[J")

/* functions to program control flow. */
/* can be moved to a include header file */
int get_single_char(void);
void clear_stream(void);

int get_single_char(void)
{
    int input;
    input = getchar();
    if (input != '\n')
    {
        clear_stream();
    }
    return input;
}

void clear_stream(void)
{
    int c;
    while ((c = getchar()) != '\n' && c != EOF)
    {
        continue;
    }
}

/* insert comment */
/* functions */

/* main function */
int main(int argc, char const *argv[])
{
	int argumentEnter;

	/* reusable code */
	while(1)
	{
		clear();
		printf("-------------------------------------\n");
		printf("|         M A I N  M E N U          |\n");
		printf("-------------------------------------\n");
		printf("1. Print message\n");
		printf("2. Exit program\n");

		printf("\nEnter a number: ");
		scanf("%d", &argumentEnter);

		switch(argumentEnter)
		{
			case 1:
				printf("You have entered the One number.\n");
				break;
			case 2:
				printf("program exiting gracefully.\n");
				exit(0);
				break;
			default:
				printf("You must enter a valid number.\n");
				break;
		}

		printf ("\nPress enter to continue...\n");
    	getc(stdin);
		get_single_char();
	}

	return 0;
}