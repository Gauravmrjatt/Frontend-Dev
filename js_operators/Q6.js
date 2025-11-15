let count = 0;

function increment() {
    function update(){ count++; console.log(count); }
    update();
}

function decrement() {
    function update(){ count--; console.log(count); }
    update();
}

increment();
increment();
decrement();
increment();
