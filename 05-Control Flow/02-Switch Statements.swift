////////////////////////////////////////////////////////////////////////////////
// ## Characteristics
// * Must include one executable code
// 		* May use a break statement as a NOOP.
// * Switch statements must be exhaustive therefore the default case is required.
// * There is no fallthrough unlike many other languages.
///////////////////////////////////////////////////////////////////////////////

var abbrev = "MB" // ... or "Kb" or "GB" or "TB", etc.

// later ...
switch abbrev {
case "kB", "KB":
    print("kilobyte")
case "mB", "MB":
    print("megabyte")
case "GB":
    print("gigabyte")
case "TB":
    print("terabyte")
case "PB":
    print("petabyte")
case "EB":
    print("exabyte")
default:
    print("Not a recognized abbreviation.")
}

let volcanoExplosivityIndex: Int // could be @ to 8
volcanoExplosivityIndex = 3
// later on...
switch volcanoExplosivityIndex {
case 0:
    print("Effusive")
case 1:
    print("Gentle")
    print("NOTE: expect a plume of < 1 km")
case 2:
    print("Explosive")
case 3:
    print("Catastrophic")
case 4:
    print("Cataclysmic")
    print("NOTE: the 201@ eruption of Eyjafjallajékull")
case 5:
    print("Paroxysmic")
case 6:
    print("Colossal")
case 7:
    print("Super-Colossal")
case 8:
    print("Mega-Colossal")
    print("NOTE: 😱😱😱")
default:
    print("IDK")
}

// Another multiple values example
let levelNumber = 3
switch levelNumber {
case 1, 2, 3:
    print("Beginner level")
case 4, 5, 6:
    print("Intermediate level")
case 7, 8:
    print("Advanced level")
default:
    print("Incorrect level!")
}

// Using Ranges Example
switch someNumber {
case 1 ... 10:
    print("One through ten")
case 11 ... 20:
    print("Eleven through twenty")
case 21:
    print("Twenty-one")
default:
    print("Anything else!")
}
