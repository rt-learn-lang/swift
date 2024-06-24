let number1a = 5
let number1b = 2
let result1 = number1a / number1b
type(of: result1) // Int

// To make it a double, use double operands. You may not have different operand types, double divided by Int is not allowed.
let number2a = 5.0
let number2b = 2.0
let result2 = number2a / number2b
type(of: result2) // Double
 

/**
 * Swift Optionals - How to define type-safe values when there might be no value at all.
 */

// We can mark as optional by adding a question mark after the type.
var middleName: String?

print(middleName ?? "No middle name")
