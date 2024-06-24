///////////////////////////////////////////////////////////////////////////////
//
// ## Tips:
// *   Engineers at Apple calls swift Protocol Oriented Language.
//     *   It is more useful to think in protocols than to think about objects and class inheritance.
// *   Protocols use the same syntax for when doing inheritance.
// *   There are plenty of existing protocols that you are encouraged to use rather than writing one yourself.
//
// ## Characteristics
// *   It contains no implementation.
// *   It acts similarly to a java interface.
//
// ## Concepts
// *   Protocol - A set of rules or code of behavior.
///////////////////////////////////////////////////////////////////////////////

class Player: CustomStringConvertible {
    // stored properties
    var name: String
    var livesRemaining: Int
    var enemiesDestroyed: Int
    var penalty: Int
    var bonus: Int

    // This protocol property can be stored or calculated.
    // var description = "test"
    var description: String {
        "Player \(name) has a score of \(score) and \(livesRemaining) lives remaining."
    }

    // computed property.  Tip: These are always declared as var, and not let(constants)
    var score: Int {
        // Get is omitted for simplicity for read-only properties.
        get {
            (enemiesDestroyed * 1000) + bonus + (livesRemaining * 5000) - penalty
        }

        set {
            print("You passed in \(newValue) but I'm going to ignore it.")
        }
    }

    init(name: String) {
        self.name = name
        livesRemaining = 3
        enemiesDestroyed = 0
        penalty = 0
        bonus = 0
    }
}

// create Player
let newPlayer = Player(name: "Ava")

// as the game progresses, values change...
newPlayer.enemiesDestroyed = 326
newPlayer.penalty = 872

newPlayer.bonus = 25000

print("The final score is: \(newPlayer.score)")
newPlayer.score = 125_000

print(newPlayer)
