function applyOperation(numbers, operation) {
    return numbers.map(operation);
}

const arr = [1,2,3,4];

console.log("Double:", applyOperation(arr, n => n * 2));
console.log("Square:", applyOperation(arr, n => n * 2));
