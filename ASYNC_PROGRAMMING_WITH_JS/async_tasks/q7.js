// Q7 – Promise.allSettled
function loadProfile(){return new Promise((r,j)=>setTimeout(()=>Math.random()<0.8?r('Profile Loaded'):j('Profile Failed'),2000));}
function loadPosts(){return new Promise((r,j)=>setTimeout(()=>Math.random()<0.8?r('Posts Loaded'):j('Posts Failed'),1500));}
function loadMessages(){return new Promise((r,j)=>setTimeout(()=>Math.random()<0.8?r('Messages Loaded'):j('Messages Failed'),1000));}
const start = Date.now();
Promise.allSettled([loadProfile(),loadPosts(),loadMessages()])
  .then(res => {
    console.log(res);
    console.log('Total time:', Date.now()-start);
  });
