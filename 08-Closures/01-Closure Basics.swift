///////////////////////////////////////////////////////////////////////////////
//
// “Closures let us take lines of code
// and group it together to use
// elsewhere in Our program.”
//
// ## Characteristics of a Closure
// *   It doesn't have a name, it doesn't need a name.
//
// ## Why Closures?
// Because you have a block of code you want to pass.
//
// ## Closure Equivalents
// * blocks
// * lambdas
// * function literals
// * anonymous class
///////////////////////////////////////////////////////////////////////////////

struct Book {
    var title: String
    var authorLastName: String
    var authorFirstName: String
    var readingAge: Int
    var pageCount: Int
}

// create several Book instances
let book1 = Book(title: "Where the Wild Things Are", authorLastName: "Sendak",
                 authorFirstName: "Maurice", readingAge: 4, pageCount: 48)

let book2 = Book(title: "The Little Prince", authorLastName: "de Saint-Exupéry",
                 authorFirstName: "Antoine", readingAge: 10, pageCount: 96)

let book3 = Book(title: "Oh, the Places You'll Go!", authorLastName: "Seuss",
                 authorFirstName: "Dr.", readingAge: 18, pageCount: 56)

let book4 = Book(title: "Goodnight Moon", authorLastName: "Wise Brown", authorFirstName:
    "Margaret", readingAge: 1, pageCount: 30)

let book5 = Book(title: "The Hobbit", authorLastName: "Tolkien", authorFirstName: "J.R.R.",
                 readingAge: 12, pageCount: 300)

// create an Array of Book elements
let allBooks = [book1, book2, book3, book4, book5]

// Step 1: Write a regular function.
func compareTwoBooks(firstBook: Book, secondBook: Book) -> Bool {
    if firstBook.readingAge <= secondBook.readingAge {
        return true
    } else {
        return false
    }
}

let ageSortedBooksUsingTheFunctionName = allBooks.sorted(by: compareTwoBooks)

// Step 2: Convert the function into a closure
// 2a - Get rid of the function keyword and name.
// (firstBook: Book, secondBook: Book) -> Bool {
//     if firstBook.readingAge <= secondBook.readingAge {
//         return true
//     } else {
//         return false
//     }
// }

// 2b - Take the parameters and return type and move it inside the curly braces.
// {
// 	(firstBook: Book, secondBook: Book) -> Bool
//     if firstBook.readingAge <= secondBook.readingAge {
//         return true
//     } else {
//         return false
//     }
// }

// 2c - Separate the definition from the implementation by using the "in" keyword.
// {
//     (firstBook: Book, secondBook: Book) -> Bool
//     in
//     if firstBook.readingAge <= secondBook.readingAge {
//         return true
//     } else {
//         return false
//     }
// }

// Formatting doesn't look too good.
var ageSortedBooks = allBooks.sorted(by: { (firstBook: Book, secondBook: Book) -> Bool
    in
        if firstBook.readingAge <= secondBook.readingAge {
            return true
        } else {
            return false
        }
}
)

// Further enhancements, remove the function type.
ageSortedBooks = allBooks.sorted(by: {
    if $0.readingAge <= $1.readingAge {
        return true
    } else {
        return false
    }
})

// Using trailing closure to further simplify
ageSortedBooks = allBooks.sorted(by:) {
    if $0.readingAge <= $1.readingAge {
        return true
    } else {
        return false
    }
}

// Eliminate the parameter when it is the only parameter passed.
ageSortedBooks = allBooks.sorted {
    if $0.readingAge <= $1.readingAge {
        return true
    } else {
        return false
    }
}

// Use a single-line instead of an if-else
// ageSortedBooks = allBooks.sorted {
//     return $0.readingAge <= $1.readingAge
// }

// Finally, if there's a single line, the return keyword is no longer required and recommended to be removed.
ageSortedBooks = allBooks.sorted { $0.readingAge <= $1.readingAge }

// now, sort by page count
let shortestToLongest = allBooks.sorted { $0.pageCount <= $1.pageCount }

// now, sort by last name
let nameSortedBooks = allBooks.sorted { $0.authorLastName.uppercased() <= $1.authorLastName.uppercased() }

// create a filtered array
let booksForUnder10s = allBooks.filter { $0.readingAge < 10 }
