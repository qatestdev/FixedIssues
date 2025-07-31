import Foundation
import UIKit // Unused import

// Unused variable
let unusedVariable = "This is never used"

// Class with issues
class SwiftIssues {
    // Public property that should be private
    var publicProperty = "This should be private"
    
    // Force unwrapping
    func forceUnwrap() {
        let optional: String? = nil
        let unwrapped = optional! // Will crash
    }
    
    // Unused parameter
    func unusedParam(unused: String) {
        print("This function doesn't use its parameter")
    }
    
    // Empty function
    func emptyFunction() {
        
    }
    
    // Function with too many parameters
    func tooManyParams(a: Int, b: Int, c: Int, d: Int, e: Int, f: Int, g: Int, h: Int) {
        print("Too many parameters")
    }
    
    // Deep nesting
    func deepNesting(a: Int, b: Int, c: Int, d: Int, e: Int) {
        if a > 0 {
            if b > 0 {
                if c > 0 {
                    if d > 0 {
                        if e > 0 {
                            print("Deep nesting detected")
                        }
                    }
                }
            }
        }
    }
    
    // Duplicate code
    func duplicate1() {
        print("This is duplicate code")
        print("This is duplicate code")
        print("This is duplicate code")
    }
    
    func duplicate2() {
        print("This is duplicate code")
        print("This is duplicate code")
        print("This is duplicate code")
    }
}