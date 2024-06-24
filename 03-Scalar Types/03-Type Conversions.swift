// make a Float from an Int
let var1 = Float(1)
print("Make a Float from an Int: \(var1)")

let var2 = String(0.5)
print("Make a String from a Float: \(var2)")

let var3 = Double("2")
print("Make an Double from a String: \(var3)") // Results in Optional

let var4 = Int(1.5)
print("Make an Int from a Float: \(var4)")

/**
 * 3 Key Points
 * 1. There are conversions that doesn't make sense so those aren't allowed.
 * 		For example converting a boolean to a Double.
 * 2. Conversions can still lose information.
 * 3. Not all conversions succeed.
 * 		Some conversions will always work.
 */
