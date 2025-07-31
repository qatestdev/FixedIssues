// This file contains issues that can be detected by Revive
package main

import (
	"fmt"
)

// Unexported function with exported name
func ExportedButUnexported() {
	fmt.Println("This function has an exported name but is unexported")
}

// Variable naming issues
func badNaming() {
	i := 0                       // Single-letter variable name
	URL := "https://example.com" // Initialsm should be all caps: URL

	fmt.Println(i, URL)
}

// Unused parameter
func unusedParam(unused string) {
	fmt.Println("This function doesn't use its parameter")
}

// Deep nesting
func deepNesting(a, b, c, d, e int) {
	if a > 0 {
		if b > 0 {
			if c > 0 {
				if d > 0 {
					if e > 0 {
						fmt.Println("Deep nesting detected")
					}
				}
			}
		}
	}
}

// Empty block
func emptyBlock() {
	if true {
		// Empty block
	}
}

// Unreachable code
func unreachableCode() {
	return
	fmt.Println("This will never be executed") // Unreachable code
}

func main() {
	// Empty main function
}
