///////////////////////////////////////////////////////////////////////////////
//
// ## Features
// * A reference is passed when it is assigned to a variable/constant.
// * A reference is passed when it is passed to a function.
///////////////////////////////////////////////////////////////////////////////

// Defining and Instantiating Classes
class Appliance {
    // properties
    var manufacturer: String = ""
    var model: String = ""
    var voltage: Int = 0
    var capacity: Int?

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
var kettle = Appliance()

print(kettle.getDetails())
