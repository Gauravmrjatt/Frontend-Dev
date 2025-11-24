function Car(brand, model) {
    this.brand = brand;
    this.model = model;
}

Car.prototype.getDetails = function() {
    console.log(this.brand + " " + this.model);
}

const c1 = new Car("BMW", "X5");
const c2 = new Car("Audi", "Q7");

c1.getDetails();
c2.getDetails();
