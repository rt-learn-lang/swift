///////////////////////////////////////////////////////////////////////////////
//
// Defer allows you to run a code just before the block of code that you are in is dropped out of scope.
// ## Tips
// *   Defer is useful when ensuring resources are closed when a function is exited for example.
///////////////////////////////////////////////////////////////////////////////

var myCollection: []()

func processCart(myCart: ShoppingCart) {
    // open the resource

    myCart.open()

    defer {
        myCart.close()
    }

    // get first one
    let firstItem = myCart.first()

    // make sure the first item is active

    guard firstItem.isActive else {
        // early return? close the resource first!
        return
    }

    // process items
    for item in myCollection {
        let validatedItem = validate(item)
        if validatedItem.status == .failure {
            throw ItemError.reserved
        }
    }
}
