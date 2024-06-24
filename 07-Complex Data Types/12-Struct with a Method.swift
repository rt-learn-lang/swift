//////////////////////////////////////
// # Structs
//
// Structs are similar in capabilities to classes in other languages like java,
// but they are not entirely identical.
//
// ## Top Tips
// * String, Int, Double, Float, Bool data types are all implemented using
// structs.
//////////////////////////////////////

print("Structs: Use Case")

struct Movie {
    // properties
    var title: String
    var director: String
    var releaseYear: Int
    var genre: String

    // methods
    func summary() -> String {
        return "\(title) is a \(genre) film released in \(releaseYear) and directed by \(director)"
    }
}

// Using Xcode, swift will generate a "member initializer" that will allow an
// auto complete for the parameters of the struct below
var first = Movie(title: "Arrival", director: "Denis Villeneuve", releaseYear: 2016, genre: "Science Fiction")

var second = Movie(title: "Sing Street", director: "John Carney",
                   releaseYear: 2017, genre: "Comedy Musical")

print(first.summary())
print(second.summary())
