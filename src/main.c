#include <stdio.h>
#include "string_helpers.h"

int main() {
    const char* my_string = "Hello, world!";
    int length = string_length(my_string);
    printf("Length of the string: %d\n", length);
    return 0;
}
