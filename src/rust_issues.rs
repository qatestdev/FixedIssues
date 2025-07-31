// This file contains issues that can be detected by Rust tools

// Unused variable
fn unused_variable() {
    let unused = "This is never used";
}

// Function with too many parameters
fn too_many_params(a: i32, b: i32, c: i32, d: i32, e: i32, f: i32, g: i32, h: i32) {
    println!("Too many parameters");
}

// Unreachable code
fn unreachable_code() {
    return;
    println!("This will never be executed"); // Unreachable code
}

// Unsafe code usage
fn unsafe_code() {
    unsafe {
        let address = 0x012345usize;
        let r = address as *mut i32;
        *r = 42; // Dereferencing arbitrary memory
    }
}

// Unused result
fn unused_result() {
    "hello".to_string(); // Result is never used
}

// Empty function
fn empty_function() {
    
}

// Duplicate code
fn duplicate1() {
    println!("This is duplicate code");
    println!("This is duplicate code");
    println!("This is duplicate code");
}

fn duplicate2() {
    println!("This is duplicate code");
    println!("This is duplicate code");
    println!("This is duplicate code");
}

fn main() {
    // Empty main function
}