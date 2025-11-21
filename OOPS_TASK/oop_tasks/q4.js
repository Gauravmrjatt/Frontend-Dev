// Q4 – Employee Inheritance
class Employee{
  constructor(name, dept){ this.name=name; this.department=dept; }
  work(){ console.log(this.name + ' is working'); }
}
class Manager extends Employee{
  work(){ console.log(this.name + ' is managing the team'); }
}
const e=new Employee('Sam','HR');
const m=new Manager('Ravi','IT');
e.work();
m.work();
