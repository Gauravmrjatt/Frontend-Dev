// Q10 – Async Delivery Pipeline
function step(name){return new Promise((res,rej)=>setTimeout(()=>Math.random()<0.9?res(name+' done'):rej(name+' failed'),1000+Math.random()*1000));}
async function runPipeline(){
  try{
    console.log('Start Pipeline');
    console.log(await step('Order taken'));
    console.log(await step('Food prepared'));
    console.log(await step('Package ready'));
    console.log(await step('Out for delivery'));
    console.log('Delivery completed!');
  } catch(err){
    console.log('Pipeline failed!', err);
  }
}
runPipeline();
