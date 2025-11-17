// Q4 – Debugging Mystery
"use strict";
function showMessage() {
  // greeting = "Welcome"; // <-- this would throw in strict mode because greeting is not declared
  let greeting = "Welcome"; // Fixed by declaring variable with let/const/var
  console.log(greeting);
}
showMessage();

// Explanation (in comments):
// Under strict mode assigning to an undeclared identifier is a ReferenceError. Declaring with let/const/var places the binding in scope.
// In VS Code debugger set a watch for 'greeting' and observe the call stack when showMessage() runs.
