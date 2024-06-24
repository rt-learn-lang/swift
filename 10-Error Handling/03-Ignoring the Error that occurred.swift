///////////////////////////////////////////////////////////////////////////////
// In this example, sometimes you don't care why an error occurred but you want
// to just set a value to a nil when that happens.
///////////////////////////////////////////////////////////////////////////////
enum ServerError: Error {
    case noConnection
    case serverNotFound
    case authenticationRefused
}

func checkStatus(serverNumber: Int) throws -> String {
    switch serverNumber {
    case 1:
        print("You have no connection.")
        throw ServerError.noConnection
    case 2:
        print("Authentication failed.")
        throw ServerError.authenticationRefused
    case 3:
        print("Server 3 is up and running!")
    default:
        print("Can't find that server.")
        throw ServerError.serverNotFound
    }
    return "Success!"
}

// Handle it
let result: String?
do {
    result = try checkStatus(serverNumber: 1)
} catch {
    result = nil
}

// And to further simplify
let resultSimple = try? checkStatus(serverNumber: 1)
if result != nil {
    print(result!)
}

// Using if-let to unwrap
if let resultSimple = try? checkStatus(serverNumber: 1) {
    print(result)
}
