print("Define a protocol")
protocol MyProtocol {
    // what methods are required?
    func showMessage()

    // what properties?
    var name: String { get } // Read-only
    var favorite: String { get set } // Read-write
}

// now, adopt it
struct MyStruct: MyProtocol {
    func showMessage() {
        print("Now conforming...")
    }

    var name: String {
        return "Sebastiano"
    }
}
