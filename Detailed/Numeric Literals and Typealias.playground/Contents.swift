import UIKit

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

// All of these floating-point literals have a decimal value of 12.1875:
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

// Numeric literals can contain extra formatting to make them easier to read. Both integers and floats can be padded with extra zeros and can contain underscores to help with readability. Neither type of formatting affects the underlying value of the literal:
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Type aliases define an alternative name for an existing type. You define type aliases with the typealias keyword.
//  Type aliases are useful when you want to refer to an existing type by a name that’s contextually more appropriate, such as when working with data of a specific size from an external source:
typealias Sample = UInt16
var minAplitudeFound = Sample.min
var maxAmplitudeFound = Sample.max
