import UIKit

class Human {
  func introduce() {
    print("hi, i'm a human")
  }
}

class Balinese: Human {
  func greetings() {
    print("halo bli")
  }
}

class Javanese: Human {
  func greetings() {
    print("halo mas")
  }
}

let made = Balinese()
made.introduce()
made.greetings()

// upcasting
let newMade = made as Human // Balinese -> Human
newMade.introduce()
//newMade.greetings() // does not exist

// upcasting in struct
var name = "alf" as Any
var number = 40 as Any
var anyArray = [name, number]

// force downcasting
let newValue = anyArray[0] as! String
//let newValue1 = anyArray[1] as! String  // error

// implicit downcasting
let newestValue = anyArray[1] as? Int
print(newestValue)

// create instances
let putu = Balinese()
let soekarno = Javanese()
let nyoman = Balinese()
let boediono = Javanese()

// create array using upcasting
let humans: [Human] = [putu as Human, soekarno as Human, nyoman as Human, boediono as Human]

// automatic upcasting
let newHumans: [Human] = [putu, soekarno, nyoman, boediono]
let newNewHumans = [putu, soekarno, nyoman, boediono]

// loop
for human in humans {
  if let balinese = human as? Balinese {
    balinese.greetings()
  }
  
  if let javanese = human as? Javanese {
    javanese.greetings()
  }
}

// usage in ios development
let btnLogin = UIButton()
let lblLogin = UILabel()
let viewLogin = UIView()

let components = [btnLogin, lblLogin, viewLogin]

for component in components {
  if let btn = components as? UIButton {
    // change background
    // add title
    // ...
  }
  
  if let lbl = component as? UILabel {}
  if let view = component as? UIView {}
}
