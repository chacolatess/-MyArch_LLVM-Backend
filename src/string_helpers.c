#include "string_helpers.h"

int string_length(const char* str) {
    int length = 0;
    while (str[length] != '\0') {
        length++;
    }
    return length;
}

// Additional function implementations can go here
