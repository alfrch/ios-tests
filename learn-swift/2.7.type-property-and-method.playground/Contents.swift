import Foundation

// static property and method

// design struct
struct SomeStructure {
  static var storedTypeProperty = "some value"
  
  static var computedProperty: Int {
    get {
      return 120
    }
    set {
      print("you've set to \(newValue)")
    }
  }
  
  static func hello() {
    print("hello!")
  }
}

// access the properties and methods
SomeStructure.storedTypeProperty // "some value"
SomeStructure.hello() // "hello"

// design class
class GrandParent {
  static var numberOfYearsInMarriage = 30
  
  static func introduce() {
    print("we've been married for \(numberOfYearsInMarriage)")
  }
  
  class func introducing() {
    print("we've been married for \(numberOfYearsInMarriage)")
  }
  
  final func cantOverride() {
    print("you cant change me")
  }
  
}

// design subclass
class Parent: GrandParent {
  override class func introducing() {
    print("im married for 5 years")
  }
  
  // Cannot override static method
  
  //  override static func introduce() {
  //    print("im married for 5 years")
  //  }
}

Parent.introducing() // "im married for 5 years"

// practical usage
struct BluetoothID {
  struct iPhone {
    static let iPhone4 = "4234-1232-1232-5465"
    static let iPhone5 = "7867-5676-4535-1235"
    static let iPhone6 = "3938-6738-1424-9876"
    static let iPhone7 = "4845-3148-1237-1296"
    static let iPhone8 = "7967-8123-7892-4563"
  }
}

BluetoothID.iPhone.iPhone8 // "7967-8123-7892-4563"

// alternative
enum AirDropID: String {
  case iPhone4 = "4234-1232-1232-5465"
  case iPhone5 = "7867-5676-4535-1235"
  case iPhone6 = "3938-6738-1424-9876"
  case iPhone7 = "4845-3148-1237-1296"
  case iPhone8 = "7967-8123-7892-4563"
}

AirDropID.iPhone8.rawValue // "7967-8123-7892-4563"
