// Q8 – Retry Logic
function submitOrder(){return new Promise((res,rej)=>setTimeout(()=>Math.random()<0.5?res():rej(),1000));}
async function processOrder(){
  for(let i=1;i<=3;i++){
    try{
      await submitOrder();
      console.log('Attempt', i, 'Success');
      return;
    } catch{
      console.log('Attempt', i, 'Failed');
    }
  }
  throw new Error('Order could not be processed');
}
processOrder().catch(console.log);
