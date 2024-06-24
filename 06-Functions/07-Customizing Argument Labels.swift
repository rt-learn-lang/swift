//////////////////////////////////////
//
// ## Tips
// * Use a label to improve the clarity of the function.
// * The first label is used during function call, followed by a label used inside the function.
//////////////////////////////////////

func difference(between firstAmount: Int, and secondAmount: Int) -> Int {
    if firstAmount > secondAmount {
        return firstAmount - secondAmount
    }

    return secondAmount - firstAmount
}

print(difference(between: 27391, and: 7863))
