// Q1 – Dynamic Data Parser
'use strict';
const apiData = ["25", "true", "false", "NaN", " ", "100px", "3.14", null, undefined];

const validNumbers = [];
const invalidNumbers = [];

function toNumber(v) {
  if (v === null || v === undefined) return NaN;
  // Trim strings first
  if (typeof v === 'string') v = v.trim();
  const n = Number(v);
  return Number.isNaN(n) ? NaN : n;
}

console.log('Detailed report for Q1:\n');
for (let i = 0; i < apiData.length; i++) {
  const raw = apiData[i];
  const asString = String(raw);
  const asBoolean = Boolean(raw && raw !== 'false' && raw !== '0');
  const asNumber = toNumber(raw);

  // Log individual conversions
  console.log(`Index ${i}: raw=${JSON.stringify(raw)} | String='${asString}' | Boolean=${asBoolean} | Number=${asNumber}`);

  if (Number.isNaN(asNumber)) {
    invalidNumbers.push({ index: i, raw });
  } else {
    validNumbers.push(asNumber);
  }
}

console.log('\nSummary:');
console.log('Valid numeric data array ->', validNumbers);
console.log('Invalid entries ->', invalidNumbers);
