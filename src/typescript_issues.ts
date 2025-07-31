// This file contains issues that can be detected by ESLint for TypeScript
class User {
  // Property should be private
  name: string;
  
  constructor(name: string) {
    this.name = name;
  }
}

// Type mismatch
const age: number = "thirty";

// Unused function parameter
function greet(name: string, title: string): string {
  return `Hello, ${name}!`;
}

// Missing return type
function calculate() {
  return 42;
}

// Implicitly returning different types
function getValue(input: boolean) {
  if (input) {
    return "string";
  }
  return 42;
}

// Unused variable
const unusedVariable: string = "This is never used";