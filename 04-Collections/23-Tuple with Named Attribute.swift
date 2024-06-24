print("Using labels for tuple attributes")
func randomAlbum() -> (albumTitle: String, length: Int) {
    // code goes here...
    let title = "And In The Endless Pause There Came The Sound Of Bees"
    let duration = 2462
    return (title, duration)
}

let result2 = randomAlbum()
print(result2)
print("Indexed value: \(result2.albumTitle)")
print("Indexed value: \(result2.length)")
