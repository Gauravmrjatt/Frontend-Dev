const user = {
    name: "Yash",
    showName: () => {
        console.log("Arrow function this.name:", this.name);
    }
};

// Arrow function DOES NOT have its own 'this'
user.showName();

// FIX:
const userFixed = {
    name: "Yash",
    showName: function() {
        console.log("Normal function this.name:", this.name);
    }
};

userFixed.showName();
