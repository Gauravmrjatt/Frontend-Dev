// Q7 – Smart Calculator
'use strict';
class InvalidOperationError extends Error {}

function smartCalc(op, a, b) {
  switch (op) {
    case 'add': return a + b;
    case 'subtract': return a - b;
    case 'divide':
      if (b === 0) throw new Error('DivideByZeroError');
      return a / b;
    case 'power': return Math.pow(a, b);
    case 'root':
      if (a < 0) throw new Error('RootOfNegativeError');
      return Math.pow(a, 1 / b);
    default:
      throw new InvalidOperationError(`Invalid operation: ${op}`);
  }
}

const operations = ['add','divide','power','root','subtract'];
const num1 = 25, num2 = 0;

for (const op of operations) {
  try {
    const result = smartCalc(op, num1, num2);
    console.log(`Operation: ${op} | Result: ${result}`);
  } catch (err) {
    console.error(`Operation: ${op} failed -> ${err.message}`);
  }
}
