// Q6 – Pyramid Pattern Generator
'use strict';
const DEFAULT_LIMIT = 5;
const limit = Number(process.argv[2]) || DEFAULT_LIMIT;

for (let i = 1; i <= limit; i++) {
  let line = '';
  for (let j = 0; j < i; j++) {
    line += '* ';
  }
  console.log(line.trim());
}

// Note: switching let to var can cause variable re-use in loops if closures capture it.
// Run: node q6.js 4  (or omit to use default 5)
