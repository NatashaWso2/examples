// These names are treated as variables defined at the top of the
// function
function divideBy10 (int d) (int quotient, int remainder) {
    return d / 10, d % 10;
}

// If the return statement does not contain any argument then the
// named return values will be returned.
function divideBy5 (int d) (int quotient, int remainder) {
    quotient = d / 5;
    remainder = d % 5;
    return;
}

// Named return variables are treated as local variables and will be
// initialized to their zero value.
function getDefaultValues () (int a, float b,
                              boolean c, string d) {
    return a, b, c, d;
}


function main (string[] args) {
    var q1, r1 = divideBy10(93);
    println("93/10: " + "quotient=" + q1 + " " + "remainder=" + r1);

    var q2, r2 = divideBy5(93);
    println("93/5: " + "quotient=" + q2 + " " + "remainder=" + r2);

    int a;
    float b;
    boolean c;
    string d;
    a, b, c, d = getDefaultValues();

    println("a: " + a);
    println("b: " + b);
    println("c: " + c);
    println("d: " + d);
}