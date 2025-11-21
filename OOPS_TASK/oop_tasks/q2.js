// Q2 – Online Food Ordering
const menu = { burger:100, pizza:200, fries:80, coke:50 };
function calculateBill(orderItems){
  try{
    const prices = orderItems.map(item => {
      if(!menu[item]) throw new Error(item + ' is not available');
      return menu[item];
    });
    const total = prices.reduce((a,b)=>a+b,0);
    console.log('Total Bill:', total);
  } catch(err){ console.log('Error:', err.message); }
}
calculateBill(['burger','pizza']);
calculateBill(['burger','pasta']);
