struct Movie {
    // properties
    var title: String
    var director: String
    var releaseYear: Int
    var genre : String
}

// Using Xcode, swift will generate a "member initializer" that will allow an
// auto complete for the parameters of the struct below
var first = Movie(title: "Arrival", director: "Denis Villeneuve", releaseYear: 2016, genre: "Science Fiction" )

var second = Movie(title: "Sing Street", director: "John Carney",
releaseYear: 2017, genre: "Comedy Musical")

first.title
second.title
