const cucumber = require("@cucumber/cucumber");
const Fibonacci = require("../../Fibonacci");

class CustomWorld {
    constructor() {
        this.fibonacci = new Fibonacci();
        this.thrown = false;
    }

    hasThrown() {
        return this.thrown;
    }

    itThrew() {
        this.thrown = true;
    }
}

cucumber.setWorldConstructor(CustomWorld);