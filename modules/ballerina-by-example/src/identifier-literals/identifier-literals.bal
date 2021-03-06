function main (string[] args) {
    //The vertical bar (|) character is used to demarcate the identifier
    //name. This is similar to string literals (using double quote
    //characters to demarcate).
    string |first name| = "John";
    string |last name| = "Gosling";

    //Invoking a function with identifier literal as a parameter.
    string name = |combine names|(|first name|, |last name|);
    println(name);
}

//Sample function defined with function name and input parameters
//using identifier literals.
function |combine names| (string |first name|,
                          string |last name|) (string) {
    return |first name| + " " + |last name|;
}

//Struct defined using identifier literals.
struct |person record| {
    string |first name|;
    string |last name|;
    int age;
}