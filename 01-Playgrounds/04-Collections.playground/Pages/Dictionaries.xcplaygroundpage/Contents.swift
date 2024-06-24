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

let interestingNumbers6 = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest6 = 0
var largestKind = "Prime"
for (kind, numbers) in interestingNumbers6 {
    for number in numbers where number > largest6 {
        largestKind = kind
        largest6 = number
    }
}

print("5. Iterating dictionary: \(largest6) of kind: \(largestKind)")
