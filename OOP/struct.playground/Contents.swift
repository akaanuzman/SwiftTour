import UIKit

/// My stack data struct
struct Stack<T> {
    var array = [T]()
    var last : T? {
        return array.isEmpty ? nil : array[array.count - 1]
    }
    var first : T? {
        return array.isEmpty ? nil : array[0]
    }
    
    init(array: [T]) {
        self.array = array
        /// reverse array
        var counter : Int = array.count
        var temp = [T]()
        while counter > 0 {
            temp.append(array[counter - 1])
            counter -= 1
        }
        self.array = temp
        print("end-to-end stack view: \(self.array) \n")
    }
    
    // Push method for stack data struct
    mutating func push(_ val: T) {
        print("end-to-end stack view before push method: \(array) \n")
        array.append(val)
        var temp = [T]()
        if let last {
            temp.append(last)
            array.remove(at: array.count - 1)
        }
        var counter : Int = 0
        while counter < array.count {
            temp.append(array[counter])
            counter += 1
        }
        array = temp
        print("end-to-end stack view after push method: \(array) \n")
    }
    
    // Pop method for stack data struct
    mutating func pop() -> Void {
        print("end-to-end stack view before pop method: \(array) \n")
        guard !array.isEmpty else {
            return
        }
        array.remove(at: 0)
        print("end-to-end stack view after pop method: \(array) \n")
    }
}

var someStack = Stack<String>(array: ["Swift","Dart","Go","Ruby"])
someStack.push("C#")
someStack.pop()
