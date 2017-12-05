//Defining a Person struct. Contains field names and their types.
//Optionally, for value type fields, can define the default value.
//Otherwise, the default value will be set to the zero-value.
struct Person {
    string name;
    int age = -1;
    Person parent;
    string status;
}

function main (string[] args) {
    //Create a person with default values.
    Person p1 = {};
    println(p1);

    //Create a person struct. Values can be set to any field when initializing.
    //Other fields will have their default values.
    Person p2 = {name:"Jack", age:20, parent:p1};
    println(p2);

    //Get a value of a field of a struct. Fields can be accessed using dot(.)
    //notation or using index.
    println(p2.name);
    println(p2["name"]);

    //Get the field of a nested struct.
    println(p2.parent.age);

    //Set the value of a field.
    p1.name = "Peter";
    p1.age = 25;
    println(p1);
    println(p2);
}