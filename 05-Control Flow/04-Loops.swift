print("\n1. While Loops")
var itemToProcess = 3
while itemToProcess > 0 {
    print("Process item...")
    itemToProcess -= 1
}

print("\n2. Repeat-While Loops. Runs at least 1")
repeat {
    print("Process item...")
    itemToProcess += 1
} while itemToProcess < 3

print("\n3. Basic For loop")
let bunchOfWords = ["Mellifluous", "Bioluminescent", "Kerfuffle",
                    "Nemophilist", "Meliorism", "Defenestration"]
for word in bunchOfWords {
    print(word)
}

print("\n4. For Loop using a closed range operator (the number on both sides are included)")
for number in 0 ... 10 {
    print(number)
}

print("\n5. For Loop using a half-open range operator (the number on the right is not included)")
for number in 0 ..< 10 {
    print(number)
}

print("\n6. Using stride through step other than by one")
for number in stride(from: 1, through: 5, by: 2) {
    print(number)
}

print("\n7. Using stride to step other than by one")
for number in stride(from: 1, to: 5, by: 2) {
    print(number)
}

print("\n8. Using stride to step backwards")
for number in stride(from: 100, to: 10, by: -20) {
    print(number)
}

print("\n9. For-where")
let interestingNumbers9 = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest9 = 0
var largestKind = "Prime"
for (kind, numbers) in interestingNumbers9 {
    for number in numbers where number > largest {
        largestKind = kind
        largest9 = number
    }
}
