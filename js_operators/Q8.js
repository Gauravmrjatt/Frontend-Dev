const cart = [
    { item: "Laptop", category: "electronics", price: 45000 },
    { item: "Shoes", category: "fashion", price: 2500 },
    { item: "Book", category: "education", price: 600 }
];

let total = 0;
cart.forEach(p=>{
    let price = p.price;
    if(p.category==="electronics") price -= price*0.10;
    if(p.category==="fashion") price -= price*0.05;
    total += price;
});
if(total > 50000) total -= total*0.05;

console.log("Final Total:", total.toFixed(2));
