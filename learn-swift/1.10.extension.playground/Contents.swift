import Foundation

// design struct
struct Alif {
  var name = "alif"
  var skill = "work"
  
  init() {}
}

// extend struct
extension Alif {
  var description: String {
    let name = self.name
    let skill = self.skill
    
    return "i'm \(name), i know \(skill)"
  }
  
  init(skill: String) {
    self.skill = skill
    print("you've entered a new skill")
  }
  
  subscript(skill: String) -> String {
    return "this is your secret weapon"
  }
}

// check
let alif = Alif()
alif.description

let newAlif = Alif(skill: "code")
newAlif.description

// extend swift native types
extension Int {
  var squared: Int {
    return self * self
  }
}

let number = 10
number.squared

