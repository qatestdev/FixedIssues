// This file contains issues that can be detected by PMD
package com.example;

import java.util.ArrayList;
import java.util.List;
import java.util.Date; // Unused import

public class JavaIssues {
    // Public field should be private
    public String publicField = "This should be private";
    
    // Empty method
    public void emptyMethod() {
        
    }
    
    // Unused parameter
    public void unusedParam(String unused) {
        System.out.println("This method doesn't use its parameter");
    }
    
    // God class with too many methods
    public void method1() { }
    public void method2() { }
    public void method3() { }
    public void method4() { }
    public void method5() { }
    public void method6() { }
    public void method7() { }
    public void method8() { }
    public void method9() { }
    public void method10() { }
    
    // Inefficient String concatenation
    public String inefficientConcat() {
        String result = "";
        for (int i = 0; i < 100; i++) {
            result = result + i; // Should use StringBuilder
        }
        return result;
    }
    
    // Dead code
    public void deadCode() {
        return;
        System.out.println("This will never be executed");
    }
    
    // Null assignment
    public Object nullAssignment() {
        Object obj = null;
        return obj;
    }
}