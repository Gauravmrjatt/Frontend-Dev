// Q2 – Employee Bonus Calculator
'use strict';
const employees = [
  { name: "Amit", salary: "45000", years: "5" },
  { name: "Sara", salary: "38000", years: "2" },
  { name: "Kiran", salary: "52000", years: "7" }
];

(function calculateBonuses(list) {
  try {
    for (const emp of list) {
      if (!emp || !emp.name) throw new Error('Missing employee object or name');
      const salary = Number(emp.salary);
      const years = Number(emp.years);
      if (Number.isNaN(salary) || Number.isNaN(years)) throw new Error(`Invalid numeric conversion for ${emp.name}`);

      const bonus = (years > 3) ? (salary * 0.1) : (salary * 0.05);
      console.log(`Employee: ${emp.name} | Salary: ₹${salary.toFixed(2)} | Years: ${years} | Bonus: ₹${bonus.toFixed(2)}`);
    }
  } catch (err) {
    console.error('Error in bonus calculation:', err.message);
  }
})(employees);
