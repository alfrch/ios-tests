import UIKit

// create class with designated init
class Human {
  var name: String
  init(name: String) {
    self.name = name
  }
  
  // convenience init initializes the designated init method
  convenience init() {
    self.init(name: "alif")
  }
}

// create object
let alf = Human(name: "alf") // init(name: String)
let alif = Human() // convenience init()

// initialize uicolor
let randomColor = UIColor(red: 255/255, green: 80/255, blue: 85/255, alpha: 1)

// custom convenience init
extension UIColor {
  convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
    self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
  }
}

let favoriteColor = UIColor(r: 30, g: 80, b: 95)
