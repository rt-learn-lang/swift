////////////////////////////////////////////////////////////////////////////////
//
// Swift Optional - How to define type-safe values when there might be no value
// at all.
//
// ## Tips
// * comma is allowed after the last element, but swiftlint automatically removes it.
//
// ## Characteristics
// * 0-based.
// * Type-safe. Cannot have mixed type array.
///////////////////////////////////////////////////////////////////////////////

let commonArray = ["apple", "banana", "orange"]

let array1 = ["catfish", "water", "tulips"]
print("1. Array declaration: \(array1)")

let array1b = [String]()
print("1b. Empty array declaration with type annotation: \(array1b)")

var array2 = ["catfish", "water", "tulips"]
array2[1] = "bottle of water"
print("2. Updating item in an array: \(array2)")

var array3 = ["catfish", "water", "tulips"]
array3.append("blue paint")
print("3. Appending item to an array: \(array3)")

let array4 = [15, 20, 25]
print("4. Array declaration of integers: \(array4)")

print("5. Retrieving an element: \(commonArray[2])")

var array6 = ["apple", "banana", "orange"]
array6[2] = "pepper"

var array7 = ["apple", "banana", "orange"]
array7.append("pepper")
print("7. Appending a value: \(array7)")

var array8 = ["apple", "banana", "orange"]
let element8 = array8.remove(at: 2) // Treating the array like a queue or a stack.
print("7. Removing an element: \(array8)")
