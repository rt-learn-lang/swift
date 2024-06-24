let number1a = 5
let number1b = 2
let result1 = number1a / number1b
print(type(of: result1)) // Int

// To make it a double, use double operands.
let number2a = 5.0
let number2b = 2.0
let result2 = number2a / number2b
print(type(of: result2)) // Double

let number3a = 5
let number3b = 2
let modulo = number3a % number3b
print(modulo)

print("\n2. Identity operators used for reference types")
class Car {}
let vehicle = Car()
let vehicleReference = vehicle
print("Comparison result: \(vehicle === vehicleReference)")
