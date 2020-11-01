import Foundation

// problem: atrocious code
func getDiameter(radius: Double) -> Double {
  return radius * 2
}

func getRadius(diameter: Double) -> Double {
  return diameter / 2
}

getDiameter(radius: 10)
getRadius(diameter: 200)
getRadius(diameter: 600)

// introducing computed property
// gettable property
class Number {
  var readableNumber: Double {
    get {
      // complex logic
      return 777
    }
  }
  
  var readableNumbers: Double {
    return 789
  }
}

let number = Number()
//number.readableNumber = 10 // error
//number.readableNumbers = 20 // error

// gettable and settable property
var radius: Double = 10
var diameter: Double {
  get {
    return radius * 2
  }
  set {
    radius = newValue / 2
  }
}

diameter = 50
radius = 100
diameter

var side: Double = 100
var area: Double {
  get {
    return side * side
  }
  set(newArea) {
    side = sqrt(newArea)
  }
}

area = 1000
side
