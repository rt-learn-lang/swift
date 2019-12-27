let string1 = "Hello"
print("1. String interpolation \(string1)")

let string2 = "Hello" + " " + "World"
print("2. String concatenation: \(string2)")

let string3 = "Hello" + String(42)
print("3. String concatenation to other types must be converted: \(string3)")

let string4 = """
This is a
multi line
string.
"""
print("4. Multiline string: \(string4)")

let apples = "apples"
let oranges = "oranges"

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

print(quotation)
