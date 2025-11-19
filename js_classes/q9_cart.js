class Cart {
  constructor() { this.items = []; }
  addItem(name, price, qty) {
    this.items.push({name, price, qty});
  }
  getTotal() {
    return this.items.reduce((sum,i)=> sum + i.price * i.qty, 0);
  }
  applyCoupon(code) {
    const reg = /^(SAVE|DISC)(\d{2})$/;
    const match = code.match(reg);
    if (!match) return 'Invalid coupon';
    const percent = Number(match[2]);
    const total = this.getTotal();
    return total - (total * percent) / 100;
  }
}

const cart = new Cart();
cart.addItem('Laptop',50000,1);
cart.addItem('Mouse',500,2);
console.log(cart.applyCoupon('SAVE20'));
