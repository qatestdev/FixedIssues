// This file contains issues that can be detected by dartanalyzer
void main() {
  // Unused variable issue
  var unusedVar = 'This variable is never used';
  
  // Missing required parameters
  printName();
  
  // Type issues
  int number = 'Not a number';
  
  // Control flow issues
  if (true) {
    return;
  } else {
    // Unreachable code
    print('This will never be reached');
  }
}

// Missing required parameter
void printName([String name]) {
  print('Hello, $name');
}