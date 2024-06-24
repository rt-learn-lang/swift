///////////////////////////////////////////////////////////////////////////////
//
// ## Tips
// *   In Swift, the terminology used is superclass and subclass  as opposed to
// 	        base/derived parent/child.
// *   Inheritance is not a commonly used in the Swift world. A different techniques
//          are preferred like delegations or protocols.
// *   Classes do not inherit from a universal default class unlike other languages.
// *   Overriding initializers simply adds on to the existing instead of
// replacing as opposed to when overriding a method.
///////////////////////////////////////////////////////////////////////////////

// Inheritance.  Precede the class with the "final" keyword if instead inheritance is not permitted on the class.
class Appliance {
    var make: String
    var model: String
    init() {
        make = "default"
        model = "default"
    }

    func printDetails() {
        print("Make: \(make) \nModel: \(model)")
    }

    // Annotate with final when you don't want the method to be overridden.
    final func printPrivacy() {
        print("Make: \(make) \nModel: \(model)")
    }
}

// define a new class
class Toaster: Appliance {
    // new property :
    var slices: Int
    override init() {
        slices = 2
        super.init() // Explicit invocation of super is optional.
    }

    // new method
    func toast() {
        print("Irradiating now...")
    }
}

var myToaster = Toaster()
myToaster.make = "AcmeCorp"
myToaster.model = "Carbonizer"
myToaster.printDetails()
