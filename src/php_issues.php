<?php
// This file contains issues that can be detected by PHP tools

// Unused variable
$unusedVar = "This is never used";

// Empty class
class EmptyClass {
}

// Unused parameter
function unusedParam($unused) {
    echo "This function doesn't use its parameter";
}

// Unused private method
class UnusedMethod {
    private function neverCalled() {
        echo "This method is never called";
    }
    
    public function publicMethod() {
        echo "This method is public";
    }
}

// Eval is evil
function evalUsage($code) {
    eval($code);
}

// Exit usage
function exitUsage() {
    exit();
}

// SQL Injection vulnerability
function sqlInjection($userInput) {
    $conn = new mysqli("localhost", "user", "password", "database");
    $query = "SELECT * FROM users WHERE username = '" . $userInput . "'";
    $result = $conn->query($query);
}

// Deep nesting
function deepNesting($a, $b, $c, $d, $e) {
    if ($a > 0) {
        if ($b > 0) {
            if ($c > 0) {
                if ($d > 0) {
                    if ($e > 0) {
                        echo "Deep nesting detected";
                    }
                }
            }
        }
    }
}