/// From the Pluralsight course Xcode Fundamentals
/// @Created: Wednesday, May 29, 2024 at 5:13:57 PM
/// NOTE: The author of the course advised that your migleage may vary. So far it worked for me on Xcode 15.4 with minor tweak (removed the import UIKit instruction)

import SwiftUI
import PlaygroundSupport

var greeting = "Hello, playground"

[1, 2, 3, 4, 5]
    .publisher
    .map { String($0) }
    .sink {
        print("output \($0)")
    }

struct ContentView: View {
    var body: some View {
        Text("Hello Xcode Fundamentals")
    }
}
PlaygroundPage.current.setLiveView(ContentView())
