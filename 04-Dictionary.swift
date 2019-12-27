let dict1 = [String:String]()
print("1. Empty dictionary declaration: \(dict1)")

let dict2 = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
]
print("2. Dictionary declaration: \(dict2)")

var dict3 = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
]
dict3["Malcolm"] = "Manager"
print("3. Updating dictionary: \(dict3)")

dict3["Yo"] = "Ho"
print("4. Inserting in a dictionary: \(dict3)")


let interestingNumbers5 = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest5 = 0
var largestKind = "Prime"
for (kind, numbers) in interestingNumbers5 {
    for number in numbers {
        if number > largest5 {
            largestKind = kind
            largest5 = number
        }
    }
}
print("5. Iterating dictionary: \(largest5) of kind: \(largestKind)")

