////////////////////////////////////////////////////////////////////////////////
// ## Tips
// * Curly braces are always required, even for single line if-else statement.
// * Parenthesis are not required.
// * Conditions must be true or false.
//
// ## Logical Operators
// a == b
// a != b
// a > b
// a < b
// a >= b
// a <= b
//
// Logical AND
// if a == b && c != d

///////////////////////////////////////////////////////////////////////////////

var score = 100

if score > 10 {
    print("It's greater than 10")
} else {
    print("It's not greater than 10")
}

let varA = 1
let varB = 2
let varC = 3
let varD = 4

// if varA == varB && varC != varD {  // Auto-corrected to ,
if varA == varB, varC != varD {
    print("Logical And")
}

if varA == varB || varC != varD {
    print("Logical Or")
}

let highScore = 100
let bonus = 0
let penalty = 0

// use parens with complex situations
if (score >= highScore && bonus == 0) || ((score * bonus) - penalty) >= highScore {
    print("Complex example")
}
