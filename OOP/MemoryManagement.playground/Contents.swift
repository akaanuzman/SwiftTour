import UIKit

// Storng referance type - weak referance type
class Person {
    var pet: Dog?
    var name: String

    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("person: \(name) referance removed!")
    }
}

class Dog {
    weak var owner: Person?
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("dog: \(name) referance removed!")
    }
}

// how to create retain cycle

var person : Person? = Person(name: "kaan")
var dog: Dog? = Dog(name: "rıfkı")

person?.pet = dog
dog?.owner = person

person = nil
person
dog = nil
dog
