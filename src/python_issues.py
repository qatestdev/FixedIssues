#!/usr/bin/env python3
# This file contains issues that can be detected by Pylint

# Unused import
import os
import sys

# Bad variable name
x = 10

# Global variable without docstring
GLOBAL_CONSTANT = 42

class BadClass:
    # Missing docstring
    def __init__(self):
        # Too many instance attributes
        self.a = 1
        self.b = 2
        self.c = 3
        self.d = 4
        self.e = 5
        self.f = 6
        self.g = 7
        self.h = 8
        
    # Method could be a function
    def static_method(self, param):
        return param + 1
        
# Unused variable
unused_var = "This is never used"

# Too complex function
def complex_function(a, b, c, d, e, f):
    if a > 0:
        if b > 0:
            if c > 0:
                if d > 0:
                    if e > 0:
                        if f > 0:
                            return True
    return False

# Duplicate code
def duplicate1():
    print("This is duplicate code")
    print("This is duplicate code")
    print("This is duplicate code")
    
def duplicate2():
    print("This is duplicate code")
    print("This is duplicate code")
    print("This is duplicate code")