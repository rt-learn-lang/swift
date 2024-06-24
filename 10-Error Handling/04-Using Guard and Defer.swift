///////////////////////////////////////////////////////////////////////////////
//
// ## Tip
// *   Guard may be a better choice as compared to if-let constructs or nil checks.
// *   A guard must have a hard exit statement in the else block. (return, break, continue, or throw)
// *   A guard can be done using the other basic form but it is more of a syntactic sugar due to it being concise.
///////////////////////////////////////////////////////////////////////////////

// Bad Form 1
func processTrack1(trackName: String?, artist: String?, duration: Int?) {
    // check to see if we have values.
    if let unwrappedTrackName = trackName {
        if let unwrappedArtist = artist {
            if let unwrappedDuration = duration {
                // now we have all three...|
            }
        }
    }
    // now, start processing...
}

// Bad Form 2
func processTrack2(trackName: String?, artist: String?, duration: Int?) {
    // check to see if we have values.
    if let unwrappedTrackName = trackName, let unwrappedArtist = artist, let unwrappedDuration = duration {
        // now we have all three...|
    } else {
        print("Values were not provided")
    }
    // now, start processing...
}

// Syntax
// guard some-condition-i-need-to-be-true else {
//     what-we-do-if-it-isn't
// }

func processTrack(track optionalTrack: String?, artist optionalArtist: String?, album optionalAlbum: String?) {
    guard let unwrappedTrack = optionalTrack,
          let unwrappedArtist = optionalArtist,
          let unwrappedAlbum = optionalAlbum else { return }

    // The unwrapped variables are available after the guard block.
    print(unwrappedTrack)
    print(unwrappedArtist)
    print(unwrappedAlbum)
}
