var var1 = "Hello World"
// var1 can be reassigned with the same type only
print("1. Declaring a variable: " + var1)

let const2 = 3.1415 // cannot be reassigned
print("2. Declaring a constant: \(const2)")

let explicitDouble: Double = 70
print("3. Specifying the type: \(explicitDouble)")

let var4 = String(2.4)
print("4. Converting type: \(var4)")

let var5 = String(2.4)
print("5. Getting the type: \(type(of: var5))")

let var5b = 2.4
print("5b. Getting the type: \(type(of: var5b))")

let var6: String? = "Hello"
print("6. Optional: \(String(describing: var6))") // Convert the type to silence the warning.

let var7: String? = nil
print("7. Optional using default value: \(var7 ?? "default")")


