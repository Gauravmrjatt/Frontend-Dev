// Q3 – Transaction Validator
'use strict';
const transactions = [
  { id: 1, amount: 2000 },
  { id: 2, amount: -500 },
  { id: 3 },
  null
];

class TransactionError extends Error {}
class NegativeAmountError extends TransactionError {}
class MissingPropertyError extends TransactionError {}
class NullEntryError extends TransactionError {}

const valid = [];
const invalid = [];

for (let i = 0; i < transactions.length; i++) {
  const tx = transactions[i];
  try {
    if (tx === null) throw new NullEntryError(`Null transaction at index ${i}`);
    if (typeof tx !== 'object') throw new TransactionError('Invalid transaction type');
    if (!('id' in tx) || !('amount' in tx)) throw new MissingPropertyError(`Missing id or amount at index ${i}`);
    if (typeof tx.amount !== 'number') throw new TransactionError('Amount must be a number');
    if (tx.amount < 0) throw new NegativeAmountError(`Negative amount in transaction ${tx.id}`);

    valid.push(tx);
  } catch (err) {
    invalid.push({ index: i, error: err.name + ': ' + err.message });
  }
}

console.log('Valid transactions:', valid);
console.log('Invalid transactions:', invalid);
console.log(`Summary -> successful: ${valid.length}, failed: ${invalid.length}`);
// To debug in VS Code, place a breakpoint on the for-loop line and watch tx, valid, invalid
