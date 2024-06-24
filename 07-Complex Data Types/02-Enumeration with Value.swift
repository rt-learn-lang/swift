//////////////////////////////////////
// ## Top Tips
// *
//////////////////////////////////////

enum BottleSize: String { // String, Int, Double...
    case half = "37.5 cl" // This is called a raw value.
    case standard = "75 cl"
    case magnum = "1.5 litres"
    case jeroboam = "3 litres"
    case rehoboam = "4.5 litres"
    case methuselah = "6 litres"
    case balthazar = "12 litres"
}

var myBottle: BottleSize = .jeroboam
print("Your \(myBottle) is \(myBottle.rawValue)")
