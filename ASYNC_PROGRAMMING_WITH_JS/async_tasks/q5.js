// Q5 – Callback Hell and Async/Await
function design(cb){setTimeout(()=>{console.log('Design');cb();},1000);} 
function build(cb){setTimeout(()=>{console.log('Build');cb();},1000);} 
function test(cb){setTimeout(()=>{console.log('Test');cb();},1000);} 
function deploy(cb){setTimeout(()=>{console.log('Deploy');cb();},1000);} 
function celebrate(cb){setTimeout(()=>{console.log('Celebrate');cb();},1000);} 

design(()=>{
  build(()=>{
    test(()=>{
      deploy(()=>{
        celebrate(()=>{});
      });
    });
  });
});

async function pipeline() {
  const delay = msg => new Promise(r => setTimeout(()=>{console.log(msg);r();},1000));
  await delay('Design');
  await delay('Build');
  await delay('Test');
  await delay('Deploy');
  await delay('Celebrate');
}
pipeline();
