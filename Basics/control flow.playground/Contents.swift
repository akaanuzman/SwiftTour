import UIKit

// basic if else
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

// optionals
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
/// [Is the variable empty?]
// usage v1
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

// usage v2
if optionalName != nil {
    greeting = "Hello, \(optionalName!) usage v2."
}
print(greeting)

// usage v3
let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"

if let nickname {
    print("Hey, \(nickname)")
} else {
    print("the variables value is nill")
}

// basic switch case
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
    // hasSuffix = include method
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
