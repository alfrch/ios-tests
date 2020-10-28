import Foundation

class Human {
  var name: String
  init(name: String) {
    self.name = name
  }
  
  func sayHello() {
    print("hello, i'm \(name)")
  }
}

class Apartment {
  var human: Human?
}

// initialize property
var jktApartmet = Apartment()
jktApartmet.human = Human(name: "alf")

// call property and method
var myName = jktApartmet.human?.name  // always return an optional type since human is optional

if let name = myName {
  print(name)
}

// force unwrap
var bdgApartment = Apartment()
let bdgResident = bdgApartment.human!.name  // error: no value for human
