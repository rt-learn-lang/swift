///////////////////////////////////////////////////////////////////////////////
//
// ## Tips
// * Retrieving a dictionary value returns an optional.
// * Uses the same instruction to add or update a value.
// * Elements in a dictionary are unordered.
///////////////////////////////////////////////////////////////////////////////

let dictionaryCommon = ["SWA": "Southwest Airlines",
                        "BAW": "British Airways",
                        "BHA": "Buddha Air",
                        "CPA": "Cathay Pacific"]

print("0a. Uninitialized dictionary using type annotations")
let dict0a: [String: String]

print("0b. Uninitialized dictionary with Integer for Key")
let dict0b: [Int: String]

let dict1 = [String: String]()
print("1. Empty dictionary declaration: \(dict1)")

let dict2 = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
print("2. Dictionary declaration: \(dict2)")

if let storedValue = dictionaryCommon["BAW"] {
    print("3. Retrieving a value: \(storedValue)")
}

var dict4 = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
dict4["Malcolm"] = "Manager"
print("4. Updating a dictionary: \(dict4)")

var dict5 = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
print("5. Inserting in a dictionary: \(dict5)")

var dict6 = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
dict6["Malcolm"] = nil // This doesn't simply set the value of the given key to
// nil, but removes the key-value pair altogether.
print("6. Removing an element in a dictionary: \(dict6)")

let interestingNumbers7 = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest7 = 0
var largestKind = "Prime"
for (kind, numbers) in interestingNumbers7 {
    for number in numbers where number > largest7 {
        largestKind = kind
        largest7 = number
    }
}

print("7. Iterating dictionary: \(largest7) of kind: \(largestKind)")
