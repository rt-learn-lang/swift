print("# Value vs. Reference")

print("## String (Implemented as Struct)")
// a Swift string is a struct- a value type

var firstString = "This is some text"

// if I assign, it's a copy...

var secondString = firstString

// so a change to the second string..
secondString += " with some more text added on."
print(secondString)

// does not affect the other

print(firstString)

print("## Classes")
class Message { // Toggling the Class keyword to Struct would immediate demonstrate the difference in the results.
    var internalText: String = "This is some text"
}

// create new instance
var firstMessage = Message()
// if I assign, it's a reference to the original instance
var secondMessage = firstMessage

secondMessage.internalText += " with some more text added on."

// print both
print(firstMessage.internalText)
print(secondMessage.internalText)
