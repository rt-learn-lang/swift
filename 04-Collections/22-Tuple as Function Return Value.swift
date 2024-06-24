print("1. Returning a tuple from a function")
func randomAlbum() -> (String, Int) {
    // code goes here...
    let title = "And In The Endless Pause There Came The Sound Of Bees"
    let duration = 2462
    return (title, duration)
}

let result1 = randomAlbum()
print(result1)
print("Indexed value: \(result1.0)")
print("Indexed value: \(result1.1)")

print("\n2. Using labels for tuple attributes")
func randomAlbumLabeledResult() -> (albumTitle: String, length: Int) {
    // code goes here...
    let title = "And In The Endless Pause There Came The Sound Of Bees"
    let duration = 2462
    return (title, duration)
}

let result2 = randomAlbumLabeledResult()
print(result2)
print("Indexed value: \(result2.albumTitle)")
print("Indexed value: \(result2.length)")
