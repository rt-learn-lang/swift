let array1 = ["catfish", "water", "tulips",] // comma is allowed after the last element
print("1. Array declaration: \(array1)")

let array1b = [String]()
print("1. Empty array declaration: \(array1b)")

var array2 = ["catfish", "water", "tulips"]
array2[1] = "bottle of water"
print("2. Updating item in an array: \(array2)")

var array3 = ["catfish", "water", "tulips"]
array3.append("blue paint")
print("3. Appending item to an array: \(array3)")
