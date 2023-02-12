import UIKit

func canThrowAnError() throws {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}


func makeASandwich() throws {
    // ...
}

// do {
//    try makeASandwich()
//    eatASandwich()
// } catch SandwichError.outOfCleanDishes {
//    washDishes()
// } catch SandwichError.missingIngredients(let ingredients) {
//    buyGroceries(ingredients)
// }


let age = 5
// assert(age >= 0)
// assert(age >= -0, "A person's age can't be less than zero.")

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

let index = -1
precondition(index > 0, "Index must be greater than zero.")
