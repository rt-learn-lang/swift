//////////////////////////////////////
// # Structs
//
// Structs are similar in capabilities to classes in other languages like java,
// but they are not entirely identical.
//
// ## Top Tips
// * String, Int, Double, Float, Bool, Array, Dictionary, Set data types are all implemented using
// structs.
// * Structs cannot participate in an inheritance
// * Structs are value types whereas classes are reference types.
// * Value is copied when it is assigned to a variable/constant or passed to a function.
//////////////////////////////////////

print("Structs: Use Case")

struct Movie {
    // properties
    var title: String
    var director: String
    var releaseYear: Int
    var genre: String
}

// Using Xcode, swift will generate a "memberwise initializer" that will allow an
// auto complete for the parameters of the struct below
var first = Movie(title: "Arrival", director: "Denis Villeneuve", releaseYear: 2016, genre: "Science Fiction")

var second = Movie(title: "Sing Street", director: "John Carney",
                   releaseYear: 2017, genre: "Comedy Musical")

print(first.title)
print(second.title)
