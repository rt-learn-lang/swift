//////////////////////////////////////
// ## Enumerations: Use Case
// var itemName: String // e.g. "Middlemarch"
// var releaseYear: Int // e.g. 1871
// var itemType: String // e.g. "Book" or "Movie" or "Music"
//
// ## Top Tips
// * Using enum works very well with switch statements
//////////////////////////////////////

enum MediaType {
    case book
    case movie
    case music
    case game
}

enum MediaTypeSingleLine {
    case book, movie, music, game
}

var itemType: MediaType

itemType = MediaType.game
// or shorthand
itemType = .book

print(itemType)
