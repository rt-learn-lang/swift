///////////////////////////////////////////////////////////////////////////////
//
// ## Tips
// *   Omitting a set property makes it a read only.
///////////////////////////////////////////////////////////////////////////////

// Adding Computed Properties
class Player {
    // stored properties
    var name: String
    var livesRemaining: Int
    var enemiesDestroyed: Int
    var penalty: Int
    var bonus: Int

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
