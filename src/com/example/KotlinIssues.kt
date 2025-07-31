package com.example

import java.util.Date // Unused import

// Unused variable
val unusedVariable = "This is never used"

// Class with issues
class KotlinIssues {
    // Public property that should be private
    var publicProperty = "This should be private"
    
    // Empty function
    fun emptyFunction() {
        
    }
    
    // Unused parameter
    fun unusedParam(unused: String) {
        println("This function doesn't use its parameter")
    }
    
    // Function with too many parameters
    fun tooManyParams(a: Int, b: Int, c: Int, d: Int, e: Int, f: Int, g: Int, h: Int) {
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
    
    // Unreachable code
    fun unreachableCode() {
        return
        println("This will never be executed") // Unreachable code
    }
    
    // Magic number
    fun magicNumber() {
        val result = 42 * 1.5 // Magic numbers
    }
    
    // Duplicate code
    fun duplicate1() {
        println("This is duplicate code")
        println("This is duplicate code")
        println("This is duplicate code")
    }
    
    fun duplicate2() {
        println("This is duplicate code")
        println("This is duplicate code")
        println("This is duplicate code")
    }
}