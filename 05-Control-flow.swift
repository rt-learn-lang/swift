let array1 = [75, 43, 103, 87, 12]
print("1. For in")
for element1 in array1 {
    print(element1)

    if element1 > 50 {
        print("2a. If \(element1)")
    } else {
        print("2b. else \(element1)")
    }
}

var optional3: String? = "John Appleseed"
if let name = optional3 { // goes to else if optional is nil
    print("3. Optional: \(name)")
}

print("4. Switch statement.")
var vegetable3 = "red pepper"
switch vegetable3 {
    case "celery":
    print("Add some raisins and make ants on a log")
    // You don't need a break statement.
    case "cucumber", "watercress":
    print("That would make a good tea sandwich")
    case let x where x.hasSuffix("pepper"):
    print("4. Is it spicy \(x)?")
    default:  // This clause is required
    print("Everything tastes good in soup.")
}

print("5. While loop")
var n5 = 2
while n5 < 50 {
    n5 *= 2
}
print(n5) // 64

print("5. Repeat while loop")
var m6 = 2
repeat {
    m6 *= 2
} while m6 < 100
print(m6) // 128

var total7 = 0
for i7 in 0..<4 {
    total7 += i7
}
print("7. For-in exclusive with index: \(total7)") // 6

var total8 = 0
for i8 in 0...4 {
    total8 += i8
}
print("8. For-in inclusive with index: \(total8)") // 10

