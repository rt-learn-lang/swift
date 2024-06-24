////////////////////////////////////////////////////////////////////////////////
//
// Swift Optionals - How to define type-safe values when there might be no value
// at all.
//
// ## Tips
// *   Forcibly unwrapping a nil will crash the program.
// *   Nil is only used for optionals. It is different from a null value.
//
//
///////////////////////////////////////////////////////////////////////////////

// We can mark as optional by adding a question mark after the type.
var middleName: String? // An optional String

print("Middle name: \(middleName)") // This is full of warnings

// Using Optional
var regularInt: Int
var optionalInt: Int?

// Can set values
regularInt = 100
print("Regular Int: \(regularInt)")

optionalInt = 101
print("Optional Int: \(optionalInt)")

// Can set to nil
optionalInt = nil
print("Optional Int: \(optionalInt)")

// Unwrapping Optional ========================================================
// Option 1: Checking for nil values
if optionalInt != nil {
    // This example below is called forced unwrapping.
    let unwrappedInt = optionalInt!
    print("Has a value, so do something: \(unwrappedInt)")
} else {
    print("nil, Do nothing")
}

// Option 2: Using if-let (a.k.a Optional binding)
if let unwrappedInt = optionalInt {
    print("Has a value, so do something: \(unwrappedInt)")
} else {
    print("nil, Do nothing")
}
