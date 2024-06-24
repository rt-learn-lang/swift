///////////////////////////////////////////////////////////////////////////////
//
// ## Tips
// *   We'll here more "instances" rather than objects when referring to instances of both structs and classes.
//
// ## Differences:
// Class can participate in inheritance while Structs cannot.
// Structs have an automatic memberwise initializer as an option.
// Structs are value types while Classes are reference types.
// Declaring Structs using let means that the internal properties cannot also be
// 		changed unlike in a Class.
// Declaring Class with let simply means it cannot be reassigned with another
// 		reference, but its properties can still be modified if it is declared with var.
///////////////////////////////////////////////////////////////////////////////
struct Appliance {
    // properties
    var manufacturer: String
    var model: String
}

// Create a new instance. This memberwise initializer is automatically generated
// on only available in Structs and not Class.
var toaster = Appliance(manufacturer: "AcmeCorp", model: "Toastmatic")
