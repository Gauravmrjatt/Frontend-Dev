// Q10 – Nested Hoisting and Closures
'use strict';
function outer() {
  console.log('outer before var count ->', typeof count !== 'undefined' ? count : 'undefined');
  var count = 5; // hoisted declaration, initialized to 5 at this line
  function inner() {
    console.log('inner before var count ->', typeof count !== 'undefined' ? count : 'undefined');
    var count = 10; // shadows outer's count
    console.log('inner after var count ->', count);
  }
  inner();
  console.log('outer after inner ->', count);
}

outer();

// Arrow version of inner
(function outerArrow() {
  var count = 5;
  const innerArrow = () => {
    // arrow won't have its own arguments/bindings but var still creates own function scope
    var count = 10;
    console.log('innerArrow count ->', count);
  };
  innerArrow();
})();
