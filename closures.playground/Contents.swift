import UIKit


// define closure
// type 1
var someClousere: (Int,Int) -> (Int) = {
    num1,num2 in
    return num1 + num2
}
print(someClousere(10, 15))

// type 2 (this type is shoter and eaiser than type1 .)
var someClousereV2: (Int,Int) -> (Int) = {
    return $0 + $1
}
print(someClousereV2(20,25))

// basic closure
var numbers = [20, 19, 7, 12]
numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)

