#!/usr/bin/env bash
# Script to generate Q1 to Q9 JS solution files
set -euo pipefail

# Q1
cat > q1_ecommerce.js <<'JS'
class Product {
  constructor(id, name, price, category) {
    this.id = id;
    this.name = name;
    this.price = price;
    this.category = category;
  }
  applyDiscount(percent) {
    this.price -= (this.price * percent) / 100;
  }
  getDetails() {
    return `ID: ${this.id}, Name: ${this.name}, Price: ₹${this.price}, Category: ${this.category}`;
  }
}

const products = [
  new Product(1, 'Laptop', 50000, 'Electronics'),
  new Product(2, 'Mouse', 500, 'Electronics'),
  new Product(3, 'Shoes', 1500, 'Fashion')
];

products.forEach(p => p.applyDiscount(10));
console.log(products.filter(p => p.price > 1000).map(p => p.getDetails()));
JS

# Q2
cat > q2_student_validator.js <<'JS'
document.addEventListener('DOMContentLoaded', () => {
  const form = document.querySelector('form');

  const validators = {
    name: /^[A-Za-z ]+$/, 
    email: /^[\w.-]+@[\w.-]+\.[A-Za-z]{2,3}$/, 
    phone: /^\d{10}$/, 
    password: /^(?=.*[A-Z])(?=.*\d)(?=.*[@#$%^&+=!]).{6,}$/
  };

  form.addEventListener('submit', e => {
    e.preventDefault();
    const fields = ['name','email','phone','password'];

    fields.forEach(f => {
      const input = document.getElementById(f);
      const valid = validators[f].test(input.value);
      const msg = document.getElementById(f+"Msg");
      if (!valid) {
        input.style.border = '2px solid red';
        msg.textContent = `${f} invalid`;
        msg.style.color = 'red';
      } else {
        input.style.border = '2px solid green';
        msg.textContent = 'Valid';
        msg.style.color = 'green';
      }
    });
  });
});
JS

# Q3
cat > q3_library.js <<'JS'
class Book {
  constructor(title, author, isbn, isIssued = false) {
    this.title = title;
    this.author = author;
    this.isbn = isbn;
    this.isIssued = isIssued;
  }
  issueBook() { this.isIssued = true; }
  returnBook() { this.isIssued = false; }
}

const library = [
  new Book('A', 'Author1', '111'),
  new Book('B', 'Author2', '222', true),
  new Book('C', 'Author3', '333')
];

console.log('Available books:', library.filter(b => !b.isIssued));

function issueByISBN(code) {
  const book = library.find(b => b.isbn === code);
  if (book && !book.isIssued) book.issueBook();
  return book;
}

console.log(issueByISBN('333'));
JS

# Q4
cat > q4_formbuilder.js <<'JS'
class FormBuilder {
  constructor(fields) {
    this.fields = fields;
  }
  render(containerId) {
    const container = document.getElementById(containerId);
    let html = '<form id="dynamicForm">';
    this.fields.forEach(f => {
      html += `<label>${f.label}</label><input type="${f.type}" id="${f.label}"><br>`;
    });
    html += '<button type="submit">Submit</button></form>';
    container.innerHTML = html;
  }
  getFormData() {
    const data = {};
    this.fields.forEach(f => data[f.label] = document.getElementById(f.label).value);
    return data;
  }
}
JS

# Q5
cat > q5_movie_booking.js <<'JS'
const nameReg = /^[A-Za-z ]+$/;
const emailReg = /^[\w.-]+@[\w.-]+\.[A-Za-z]{2,3}$/;
const seatReg = /^([1-9]|10)$/;

function bookTicket(name, email, seats) {
  if (!nameReg.test(name)) return 'Invalid name';
  if (!emailReg.test(email)) return 'Invalid email';
  if (!seatReg.test(seats)) return 'Invalid seat count';

  const ticket = { name, email, seats };
  return ticket;
}

console.log(bookTicket('Yash', 'yash@mail.com', 4));
JS

# Q6
cat > q6_employee.js <<'JS'
class Employee {
  constructor(id, name, department, salary) {
    this.id = id;
    this.name = name;
    this.department = department;
    this.salary = salary;
  }
  getAnnualSalary() { return this.salary * 12; }
  applyBonus(p) { this.salary += (this.salary * p) / 100; }
}

const employees = [
  new Employee(1,'A','IT',50000),
  new Employee(2,'B','HR',40000),
  new Employee(3,'C','Sales',45000),
  new Employee(4,'D','IT',60000),
  new Employee(5,'E','Finance',55000)
];

const totalPayout = employees.reduce((sum,e)=> sum + e.getAnnualSalary(), 0);
console.log('Total Annual Payout:', totalPayout);
JS

# Q7
cat > q7_login_validator.js <<'JS'
const userReg = /^.{5,}$/;
const passReg = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&+=!]).{8,}$/;

function validateLogin(u,p){
  if(!userReg.test(u)) return 'Username too short';
  if(!passReg.test(p)) return 'Weak password';
  return 'Login successful';
}

console.log(validateLogin('admin123','Strong@123'));
JS

# Q8
cat > q8_object_updater.js <<'JS'
let user = { name: 'John', email: 'john@mail.com', age: 21 };

function updateUser(key, value) {
  user[key] = value;
  console.log('Updated user:', user);
}
JS

# Q9
cat > q9_cart.js <<'JS'
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
JS

echo "Generated JS solution files for Q1-Q9."