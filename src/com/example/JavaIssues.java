// This file contains issues that can be detected by PMD
package com.example;

import java.util.ArrayList;
import java.util.List;

public class JavaIssues {

    private String publicField = "This should be private";

    // Inefficient String concatenation
    public String inefficientConcat() {
        String result = "";
        for (int i = 0; i < 100; i++) {
            result = result + i; // Should use StringBuilder
        }
        return result;
    }
    
    public void deadCode() {
        return;
    }

}