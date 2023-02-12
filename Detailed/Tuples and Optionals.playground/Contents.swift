import UIKit

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

// If you only need some of the tuple’s values, ignore parts of the tuple with an underscore (_) when you decompose the tuple:
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

// Alternatively, access the individual element values in a tuple using index numbers starting at zero:
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

// You can name the individual elements in a tuple when the tuple is defined:
let http200Status = (statusCode: 200, description: "OK")

// If you name the elements in a tuple, you can use the element names to access the values of those elements:
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

// ---------- OPTIONALS ----------
let possibleNumber = "123"
var convertedNumber = Int(possibleNumber)
let impossibleNumber = "hello world"
convertedNumber = Int(impossibleNumber) // the impossibleNumber is returns nil !!!

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}

let myNumber = Int(possibleNumber)
if let myNumber {
    print("My number is \(myNumber)")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point

let optionalString = assumedString
print(type(of: optionalString))


