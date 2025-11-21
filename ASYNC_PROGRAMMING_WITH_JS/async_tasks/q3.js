// Q3 – Bug Tracker: Promises
function getBugs() {
  return new Promise((resolve, reject) => {
    const fail = Math.random() < 0.3;
    setTimeout(() => fail ? reject('API Failure') : resolve(['UI glitch', 'API timeout', 'Login failure']), 1000);
  });
}
getBugs()
  .then(bugs => console.table(bugs))
  .catch(err => console.log('Error:', err));
