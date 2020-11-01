import Foundation

// create vehicle class
class Vehicle {
  var description: String {
    return "hello, i'm moving at 30km/hr"
  }
  
  func warning() {
    print("be careful, i'm going pretty fast")
  }
}

// override method and property
class ToyCar: Vehicle {
  override var description: String {
    return "\(super.description) hey, i'm a nice car"
  }
  
  override func warning() {
    print("hello, don't mind me")
    super.warning()
  }
}

let toyCar = ToyCar()
toyCar.description
toyCar.warning()

// super init
// design super class
class Human {
  var origin: String
  
  init(origin: String) {
    self.origin = origin
  }
}

// design subclass
class Japanese: Human {
  let city: String
  
  init(city: String) {
    self.city = city
    super.init(origin: "Japan")
  }
  
  init(city: String, origin: String) {
    self.city = city
    super.init(origin: origin)
  }
}

// create object
let mana = Japanese(city: "kyoto")
let kaga = Japanese(city: "shibuya", origin: "Japan")

// override init
// design base class
class Tesla {
  var numberOfWheels: Int
  
  init(wheelNumber: Int) {
    numberOfWheels = wheelNumber
  }
}

// design subclass
class ModelS: Tesla {
  override init(wheelNumber: Int) {
    super.init(wheelNumber: wheelNumber)
    print("wow, you've got a nice car")
  }
}

ModelS(wheelNumber: 50)
