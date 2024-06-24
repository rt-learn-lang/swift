///////////////////////////////////////////////////////////////////////////////
//
// Tuple means several elements gathered together.
//
// Why?: It allows you to return multiple values from a function for example.
//
// ## Tips
// *   Can mix literals, constants, variables.
// *   Not intended to replace more formal structures.
// 	   *   It is Mostly used in a local scope. If you find yourself using the same
// structure across your codes, a more formal type may be better like a class
// or a struct.
//
///////////////////////////////////////////////////////////////////////////////

print("Tuple example")
// various vars and constants
let cameraType = "Canon"
let photoMode = true
var shutterSpeed = 60
var iso = 640
var aperture = "f1.4"

var basicTuple = (aperture, iso, cameraType)
print(basicTuple)
