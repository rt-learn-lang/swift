///////////////////////////////////////////////////////////////////////////////
//
// ## Tips
// *   Swift does not provide a built-in error class or an error struct.
// *   An error instance can be created from any type (Class, Struct, or Enum). (Unlike other languages,
// java for example, has the Error or Exception object.)
//
///////////////////////////////////////////////////////////////////////////////

// Define
enum ServerError: Error {
    case noConnection
    case serverNotFound
    case authenticationRefused
}

// use it. Note the "throws" keyword after the parameter definition.
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

// handle it
let result = checkStatus(serverNumber: 1)
print(result)
