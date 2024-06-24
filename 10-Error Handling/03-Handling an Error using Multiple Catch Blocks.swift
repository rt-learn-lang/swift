///////////////////////////////////////////////////////////////////////////////
//
// ## Tips:
// *   The compiler will not require you to be exhaustive with the catch blocks
//         but it is generally a good idea to do it anyway.
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

do {
    let result = try checkStatus(serverNumber: 1)
    print(result)
} catch ServerError.noConnection {
    // no connection
    print("No connection. Please try later.")
} catch ServerError.authenticationRefused {
    // authentication error?
    print("Authentication error. Please check your username and password.")
} catch {
    print("The problem is: \(error) ")
}
