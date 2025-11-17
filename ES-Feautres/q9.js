// Q9 – JSON Audit
'use strict';
const rawData = [
  '{"user":"Alex","age":25}',
  '{"id":2}',
  '{invalid}',
  '{"user":"Mina","age":"22"}'
];

const clean = [];
const errors = [];

for (let i = 0; i < rawData.length; i++) {
  const line = rawData[i];
  try {
    const parsed = JSON.parse(line);
    if (!('user' in parsed) || !('age' in parsed)) throw new Error('Missing keys user or age');
    parsed.age = Number(parsed.age);
    if (Number.isNaN(parsed.age)) throw new Error('Invalid age number');
    if (parsed.age < 18) {
      console.log(`Filtered under-18 user at line ${i}:`, parsed.user);
    }
    clean.push(parsed);
  } catch (err) {
    errors.push({ line: i, raw: line, message: err.message });
  }
}

console.log('Clean entries ->', clean);
console.log('Errors ->', errors);
