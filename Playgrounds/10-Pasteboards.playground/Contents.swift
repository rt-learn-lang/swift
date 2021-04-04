/**
 * NOTE: Function declaration has to be above before they are actually invoked.
 */
import Cocoa

func clearPasteboard() {
    NSPasteboard.general.clearContents();
}

func getPlainText() -> String? {
    return NSPasteboard.general.string(forType: .string)
}

func setPlainText(_ theString:String) {
    NSPasteboard.general.clearContents(); // Would not work if we don't clear it first.
    NSPasteboard.general.setString(theString, forType: .string)
}

/**
 */
func printPasteboard() {
    print("Printing pasteboard...")
    if let items = NSPasteboard.general.pasteboardItems {
        for item in items {
            for type in item.types {
                print("Type: \(type.rawValue)")
                if let itemString = item.string(forType: type) {
                    print("String: \(itemString)")
                } else {
                    print("String: nil")
                }
            }
        }
    }
}

setPlainText("Hadouken2")
if let plainText = getPlainText() {
    print("Plain Text: \(plainText)")
}

printPasteboard()

clearPasteboard
print("after clearing ===")
printPasteboard()

