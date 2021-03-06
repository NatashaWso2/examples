//Defining Employee struct.
struct Employee {
    string name;
    int age;
    string address;
}

//Defining Person struct.
struct Person {
    string firstName;
    string lastName;
    int age;
    string city;
    string street;
}

//Defining a default transformer for converting from 'Person' type to
//'Employee' type.
transformer <Person p, Employee e> {
    e.name = p.firstName + " " + p.lastName;
    e.age = p.age;
    e.address = p.street + "," + p.city.toUpperCase();
}

//Defining a named transformer for converting from 'Person' type to
//'Employee' type.
transformer <Person p, Employee e> setCityToNewYork() {
    e.name = p.firstName + " " + p.lastName;
    e.age = p.age;
    e.address = p.street + ", " + "New York";
}

//Defining a named transformer which takes input parameters for
//converting from 'Person' type to 'Employee' type.
transformer <Person p, Employee e> insertCountry(string country) {
    e.name = p.firstName + " " + p.lastName;
    e.age = p.age;
    e.address = p.street + "," + p.city.toUpperCase() + ", " + country;
}

function main (string[] args) {
    //Initialize Person variable person.
    Person person = {firstName:"John", lastName:"Doe", age:30, city:"London"};

    //Using default transformer to convert from type Person to Employee
    //is similar to the conversion syntax.
    Employee employee = <Employee>person;
    println(employee);

    //Named transformer can be explicitly provided inside the conversion
    //syntax, to convert person to employee.
    employee = <Employee, setCityToNewYork()>person;
    println(employee);

    //Using the named transformer to convert person to employee, by
    //passing parameters.
    employee = <Employee, insertCountry("UK")>person;
    println(employee);
}