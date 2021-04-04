// 1. Defining a function.
func greet1(person: String, day: String) -> String {
    return "1. Hello \(person), today is \(day)."
}
print("1. Defining and invoking a function: \(greet1(person: "Bob", day: "Tuesday"))")


// 1. Function definition without label
func setPlainText(_ theString:String) {
    print(theString)
}


func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print("2a. Returning a compound value and accessing via name: \(statistics.sum)") // 120
print("2b. Returning a compound value and accessing via name: \(statistics.2)") // 120

func returnFifteen3() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print("3. Nested functions: \(returnFifteen3())") // 15

func makeIncrementer4() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer4()
print("4. Returning a function: \(increment(7))") // 8

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers5 = [20, 19, 7, 12]
print("5. Function as parameter: \(hasAnyMatches(list: numbers5, condition: lessThanTen))") // true

var numbers6 = [20, 19, 7, 12]
let result6 = numbers6.map({ (number: Int) -> Int in
    if number % 2 == 0 {
        let result = 3 * number
        return result
    } else {
        return 0
    }
})
print("6. Unnamed closure: \(result6)")

var numbers7 = [20, 19, 7, 12]
let mappedNumbers7 = numbers7.map({ number in 3 * number })
print("7. Concise closure: \(mappedNumbers7)") // "[60, 57, 21, 36]”

var numbers8 = [20, 19, 7, 12]
// 8. Parameters by number
let sortedNumbers8 = numbers8.sorted { $0 > $1 }
print("8. Parameters be number: \(sortedNumbers8)")






