import Foundation

import Foundation

enum guessingError: Error {
    case IncorrectSuit
    case IncorrectNumber
}

func checkGuess(a: String, b: String, c: String, d: String) -> Result<String, Error> {
    if (a == c && b == d) {
        return .success("Correct!")
    }
    if (a == c) {
        return .failure(guessingError.IncorrectSuit)
    }
    return .failure(guessingError.IncorrectNumber)
}


let successResult = checkGuess(a: "8", b: "diamonds", c: "8", d: "diamonds")
switch successResult {
case .success (let string):
    print("\(string)")
case .failure (let error):
    print("Error: \(error)")
}


let failResult = checkGuess(a: "10", b: "diamonds", c: "8", d: "diamonds")
switch failResult {
case .success (let string):
    print("\(string)")
case .failure (let error):
    print("Error: \(error)")
}

// Implement an Error type. Make sure it has at least two values.


// Implement a function that returns a Result of string or your error type


// Call your function in a way that will return an error result, and handle that error.


// Call your function in a way that will return a success result, and handle the value.
