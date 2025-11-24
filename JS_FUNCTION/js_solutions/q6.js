function Person(name) {
    this.name = name;
}
Person.prototype.sayHello = function() {
    console.log("Hello, I am " + this.name);
};

function Faculty(name, dept) {
    Person.call(this, name);
    this.dept = dept;
}
Faculty.prototype = Object.create(Person.prototype);
Faculty.prototype.constructor = Faculty;
Faculty.prototype.showDept = function() {
    console.log("Department:", this.dept);
};

function Professor(name, dept, subject) {
    Faculty.call(this, name, dept);
    this.subject = subject;
}
Professor.prototype = Object.create(Faculty.prototype);
Professor.prototype.constructor = Professor;
Professor.prototype.showSubject = function() {
    console.log("Subject:", this.subject);
};

const prof = new Professor("Dr. Yash", "CSE", "DSA");

prof.sayHello();
prof.showDept();
prof.showSubject();
