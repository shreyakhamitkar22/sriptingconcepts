class Student {
    name: string;
    age: number;

    constructor(name: string, age: number) {
        this.name = name;
        this.age = age;
    }

    display(): void {
        console.log("Student Name: " + this.name);
        console.log("Student Age: " + this.age);
    }
}


let student1 = new Student("Shreya", 20);

student1.display();