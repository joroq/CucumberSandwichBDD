class Fibonacci {
    constructor() {
        this.previous = 0;
        this.current = 1; 
    }

    next() {
        const next = this.previous + this.current;
        
        this.previous = this.current;
        this.current = next;

        return next;
    }

    init(seed) {
        while (this.current < seed) {
            this.next();
        }

        if (this.current != seed) {
            throw new Error('Invalid Fibonacci seed number!');
        }
    }

    skip(forward) {
        for (let i = 0; i < (forward - 1); i++) {
            this.next();
        }

        return this.next();
    }

    state() {
        return `The current number is ${this.current}`;
    }
}

module.exports = Fibonacci;