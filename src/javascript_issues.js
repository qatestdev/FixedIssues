// This file contains issues that can be detected by ESLint
function calculateTotal() {
  // Unused variable
  const tax = 0.1;
  
  // Missing semicolon
  const subtotal = 100
  
  // Unreachable code
  return subtotal;
  console.log("This will never be executed");
}

// Duplicate function declaration
function calculateTotal() {
  return 200;
}

// Undeclared variable
function displayTotal() {
  console.log(total);
}

// Using == instead of ===
if (1 == '1') {
  console.log('Equal');
}

// Unused function
function neverUsed() {
  return "This function is never called";
}