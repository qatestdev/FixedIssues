#!/bin/bash
# This file contains issues that can be detected by Shell tools

# Unused variable
UNUSED_VAR="This is never used"

# Command injection vulnerability
function command_injection() {
  USER_INPUT="$(cat input.txt)"
  eval "echo $USER_INPUT" # Command injection
}

# Using deprecated syntax
function deprecated_syntax() {
  let a=1+1 # Deprecated, use (( )) instead
}

# Unquoted variables
function unquoted_variables() {
  FILE_PATH="/path/with spaces/file.txt"
  cat $FILE_PATH # Should be "$FILE_PATH"
}

# Using [ ] instead of [[ ]]
function old_test_syntax() {
  if [ $a = $b ]; then
    echo "Equal"
  fi
}

# Shellshock vulnerability
function shellshock() {
  export SHELLSHOCK='() { ignored; }; echo Vulnerable'
  bash -c "echo Not vulnerable"
}

# Uninitialized variable
function uninitialized() {
  echo "$UNINITIALIZED_VAR"
}

# Hardcoded credentials
function hardcoded_credentials() {
  PASSWORD="supersecretpassword123"
  API_KEY="1234567890abcdef"
  
  curl -u admin:$PASSWORD https://example.com/api
}

# Using 'cd' without checking for errors
function cd_without_check() {
  cd /nonexistent/directory
  rm -rf ./tmp/* # Dangerous if cd failed
}