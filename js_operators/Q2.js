let product = " wireless headphones PRO ";
let cleaned = product.trim().toLowerCase()
    .split(" ").map(w => w.charAt(0).toUpperCase() + w.slice(1)).join(" ")
    .replace("Pro", "Pro Edition");

console.log("Cleaned Title:", cleaned);
console.log("Length:", cleaned.length);
