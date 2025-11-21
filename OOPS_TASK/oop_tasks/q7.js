// Q7 – Banking App
class BankAccount{
  #balance=0;
  deposit(a){ this.#balance += a; }
  withdraw(a){ if(a>this.#balance) throw new Error('Insufficient balance'); this.#balance -= a; }
  getBalance(){ return this.#balance; }
}
const acc=new BankAccount();
acc.deposit(500);
console.log(acc.getBalance());
try{ acc.withdraw(1000); }catch(err){ console.log('Error:', err.message); }
console.log(acc.getBalance());
