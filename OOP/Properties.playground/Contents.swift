import UIKit

enum MoneyType {
    case dollar
    case euro
    case pound
    case yen
    case turkishLira
}

struct Iphone {
    // Stored Properties
    let model: String
    let moneyType: MoneyType
    var price: Double
    
    init(model: String, moneyType: MoneyType, price: Double) {
        self.model = model
        self.moneyType = moneyType
        self.price = price
        print("new iPhone created")
    }
}

// Stored Properties of Constant Structure Instances
//let iPhoneSE2020 = Iphone(model: "iPhoneSE2020", moneyType: .dollar, price: 399)
//print(iPhoneSE2020)


enum Storage {
    case gb64
    case gb128
    case gb256
}

struct Ipad {
    var model: String
    var moneyType: MoneyType
    var price: Double
    var storage: Storage
    
    init(model: String, moneyType: MoneyType, price: Double, storage: Storage) {
        self.model = model
        self.moneyType = moneyType
        self.price = price
        self.storage = storage
        print("new iPad created")
    }
}

//let iPadPro = Ipad(model: "iPadPro", moneyType: .dollar, price: 799, storage: .gb128)

// Lazy Stored Properties
struct Apple {
    lazy var ipadPro: Ipad = Ipad(model: "iPadPro", moneyType: .dollar, price: 799, storage: .gb128)
    lazy var iPhoneSE2020: Iphone = Iphone(model: "iPhoneSE2020", moneyType: .dollar, price: 399)
    
    init() {
        print("apple products")
    }
}

var apple = Apple()
print(apple.iPhoneSE2020) // Iphone struct initialize method is working now.
print(apple.ipadPro) // Ipad struct initialize method is working now.


// Computed Properties
struct Time {
    var second: Double = 0
    
    init(second: Double) {
        self.second = second
    }
    
    var miniute: Double {
        get {
            return (second / 60)
        }
        set {
            second = (newValue * 60)
        }
    }
    
    var hour: Double {
        get {
            return (miniute / 60)
        }
        set {
            miniute = (newValue * 60)
        }
    }
    
    var day: Double {
        get {
            return (hour / 24)
        }
        set(dayValue) {
            hour = (dayValue * 24)
        }
    }
}

var time = Time(second: 3600)
print(time.miniute,time.hour,time.day)
