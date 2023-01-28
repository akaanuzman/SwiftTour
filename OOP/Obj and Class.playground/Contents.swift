import UIKit

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
print(shape.numberOfSides)
var shapeDescription = shape.simpleDescription()
print(shapeDescription)

// ---------------------------------------------------------
// ---------------------------------------------------------

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    // constructor method
    init(name: String) {
        print("constructor is running!")
        self.name = name
    }
    
    // destructor method
    deinit {
        print("destructor is running!")
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var namedShape : NamedShape? = NamedShape(name: "rectangle")
print(namedShape!.name)
// deinit opertaion
namedShape = nil // namedShape is being deinitialized.

// ---------------------------------------------------------
// ---------------------------------------------------------

// this class inherit the namedashape class
class Square: NamedShape {
    var sideLength: Double
    
    // nested func (super.init inside init)
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        // this command is gonna run NamedShape init method
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
print(test.area())
print(test.simpleDescription())

// ---------------------------------------------------------
// ---------------------------------------------------------

// getter and setter porperties
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.perimeter)
print(triangle.sideLength)

// ---------------------------------------------------------
// ---------------------------------------------------------

// willSet and didSet usage

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double,name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

