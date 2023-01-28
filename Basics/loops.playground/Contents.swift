import UIKit

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
// first parameter is key and the
// second parameter is value for dict
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)


var n = 2
while n < 100 {
    n *= 2
}
print(n)

// do while
var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

// range of indexes
var total = 0
for i in 0..<4 {
    total += i
}
print(total)
