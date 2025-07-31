#include <stdio.h>
#include <stdlib.h>
#include <string.h> // Unused include

// Buffer overflow vulnerability
void buffer_overflow() {
    char buffer[10];
    strcpy(buffer, "This string is too long for the buffer and will cause an overflow");
}

// Memory leak
void memory_leak() {
    char* ptr = (char*) malloc(10);
    // No free(ptr) - memory leak
}

// Unused function
void unused_function() {
    printf("This function is never called\n");
}

// Unreachable code
void unreachable_code() {
    return;
    printf("This will never be executed\n"); // Unreachable code
}

// Uninitialized variable
void uninitialized_variable() {
    int x;
    printf("%d\n", x); // Using uninitialized variable
}

// Null pointer dereference
void null_pointer_dereference() {
    char* ptr = NULL;
    printf("%c\n", *ptr); // Dereferencing NULL pointer
}

int main() {
    // Empty main function
    return 0;
}