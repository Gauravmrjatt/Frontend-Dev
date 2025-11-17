// Q8 – Strict Mode Showdown
// Version without strict would allow duplicate params and silent failures.

console.log('\n-- Without strict (simulated):\n');
function demoNonStrict(a, a_duplicate) {
  // In non-strict mode, duplicate parameter names are allowed (last one wins in many engines)
  let total = 10; // implicit globals are not created when declared with let/var
  console.log('demoNonStrict executed');
}
demoNonStrict(5,10);

console.log('\n-- With strict:\n');
try {
  (function () {
    'use strict';
    function demoStrict(a, a) { // SyntaxError in strict mode in many engines
      // unreachable
    }
    console.log('If this runs, the engine allowed duplicate params in strict mode');
  })();
} catch (err) {
  console.error('Strict-mode error observed:', err.message);
}

// Correct ES6 version:
(function () {
  'use strict';
  function demoCorrect(a, b) {
    const total = 10;
    // delete total; // illegal on non-configurable bindings
    return a + b + total;
  }
  console.log('demoCorrect result:', demoCorrect(5,10));
})();
