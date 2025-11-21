// Q6 – E-Commerce Inventory
const products=[
  {id:1,name:'Laptop',category:'Electronics',price:50000,stock:5},
  {id:2,name:'Phone',category:'Electronics',price:20000,stock:2},
  {id:3,name:'Shirt',category:'Fashion',price:1000,stock:20},
  {id:4,name:'Shoes',category:'Fashion',price:1500,stock:1}
];
const getLowStockProducts = ()=> products.filter(p=>p.stock<3);
const sortProductsByPrice = ()=> [...products].sort((a,b)=>a.price-b.price);
const calculateTotalInventoryValue = ()=> products.reduce((sum,p)=>sum+p.price*p.stock,0);
const groupByCategory = ()=> products.reduce((acc,p)=>{ (acc[p.category] ||= []).push(p); return acc; },{});
console.log(getLowStockProducts());
console.log(sortProductsByPrice());
console.log(calculateTotalInventoryValue());
console.log(groupByCategory());
