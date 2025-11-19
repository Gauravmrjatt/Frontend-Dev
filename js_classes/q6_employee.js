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
