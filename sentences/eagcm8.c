#include <stdio.h>

#define KNRM  "\x1B[0m"
#define KRED  "\x1B[31m"
#define KGRN  "\x1B[32m"

int eagcm8_sentence1(){
	printf("Out of nowhere, appeared a ");
	printf("%sgreen", KGRN);
	printf("%s zeuglodon who ate the sasquatch...because.\n", KNRM);
	return 1;
}

int eagcm8_sentence2(){
	printf("%sERROR: sasquatch not found.", KRED);
	printf("%s\n", KNRM);
	return 1;
}

