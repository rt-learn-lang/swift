// Optionals  Examples

// Using Optionals
var regularInt: Int
var optionalInt: Int?

// Can set values
regularInt = 100
optionalInt = 100

// can set to nil
optionalInt = nil

// Checking for nil values
if optionalInt != nil {
    var unwrappedInt = optionalInt!
    print("Has a value, so do something")
} else {
    print("nil, Do nothing")
}
