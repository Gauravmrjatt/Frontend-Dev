// Q4 – DevOps Delay
const serverA = new Promise((res, rej) => setTimeout(() => Math.random()<0.9?res('Server A done'):rej('A failed'), 2000));
const serverB = new Promise((res, rej) => setTimeout(() => Math.random()<0.9?res('Server B done'):rej('B failed'), 3000));
Promise.all([serverA, serverB])
  .then(() => console.log('Deployment completed for all servers'))
  .catch(console.log);
Promise.race([serverA, serverB])
  .then(fast => console.log('Fastest response:', fast))
  .catch(console.log);
