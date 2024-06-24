print("Enumerations: Associated Values")

enum MediaType {
    case movie(String)
    case music(Int)
    case book(String)
}

var firstItem: MediaType = .movie("Comedy")
var secondItem: MediaType = .music(120)

switch firstItem {
case let .movie(genre):
    print("It's a \(genre) movie")
case let .music(bpm):
    print("The music is \(bpm) beats per minute")
case let .book(author):
    print("It's by \(author)")
}
