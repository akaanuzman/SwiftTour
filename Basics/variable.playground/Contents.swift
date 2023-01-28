import UIKit

// type convert
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)

// String interpolations
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print(appleSummary)
print(fruitSummary)

// multiline string
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
print(quotation)

// lists
var fruits = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"
fruits.append("blueberries")
print(fruits)

// dictionary
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
print(occupations)

// create empty array and dictionary
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]


