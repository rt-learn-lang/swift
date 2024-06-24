///////////////////////////////////////////////////////////////////////////////
//
// ## Tips
// * Initializers can be overloaded meaning multiple parameters with different parameter definitions.
// * deinit can only be defined in Classes and not on Structs.
//
// ## Concepts:
//  ARC - Automatic Reference Counting. It handles de-allocating and freeing up memory allocations.
//  deinit is automatically called by Swift just before the memory is de-allocated.
///////////////////////////////////////////////////////////////////////////////
print("Class with an Initializer")
class Appliance {
    // properties
    var manufacturer: String = ""
    var model: String = ""
    var voltage: Int = 0
    var capacity: Int?

    // initializer
    init() {
        manufacturer = "default"
        model = "default model"
        voltage = 120
    }

    // additional initializer
    init(withVoltage: Int) {
        manufacturer = "default"
        model = "default model"
        voltage = withVoltage
    }

    // Can only have one deinitializer. deinits are uncommon, used to perform clean ups.
    deinit {}

    // methods
    func getDetails() -> String {
        var message = "This is the \(model) from \(manufacturer). "
        if voltage >= 220 {
            message += "This model is for European usage."
        }
        return message
    }
}

// Instantiate the Class
var cafetiere = Appliance(withVoltage: 220)

cafetiere.manufacturer = "Megappliance EU"
cafetiere.model = "Electrotiere"

print(cafetiere.getDetails())
