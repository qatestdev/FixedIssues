package com.example

import java.util.Date // Unused import

// Class with issues
class KotlinIssues {
    // Public property that should be private
    var publicProperty = "This should be private"
        
    // Unused parameter
    fun unusedParam() {
        println("This function doesn't use its parameter")
    }
    
    // Function with too many parameters
    fun tooManyParams() {
        println("Too many parameters")
    }
    
    // Deep nesting
    fun deepNesting(a: Int, b: Int, c: Int, d: Int, e: Int) {
        if (a > 0) {
            if (b > 0) {
                if (c > 0) {
                    if (d > 0) {
                        if (e > 0) {
                            println("Deep nesting detected")
                        }
                    }
                }
            }
        }
    }
    
    fun unreachableCode() {
        return
    }
    
    fun magicNumber() {
        val weightValue = 42 * 9.81
    }
    
    fun duplicate1() {
        println("This is duplicate code")
    }

}