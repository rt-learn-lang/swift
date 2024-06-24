///////////////////////////////////////////////////////////////////////////////
//
// Extensions allow use to add extra behaviour to a class without using inheritance.
// ## Features
// *   It works with classes, structs, and enumerations.
// *   It can add functionality not only to our types but to anything.
///////////////////////////////////////////////////////////////////////////////

extension String {
    func removeSpaces() -> String {
        let filteredCharacters = filter { $0 != " " }
        return String(filteredCharacters)
    }
}

// strings
let album = "Decks and drums and rock and roll"
let scriptio = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet"
let phrase = "Love is now here"

print(album.removeSpaces())
print(scriptio.removeSpaces())
print(phrase.removeSpaces())
