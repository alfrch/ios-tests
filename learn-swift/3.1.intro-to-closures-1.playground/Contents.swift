import Foundation

// functions
func addTwoNumbers(number1: Int, number2: Int) -> Int {
  return number1 + number2
}

addTwoNumbers(number1: 3, number2: 2) // 5

// closures
var addClosures: (Int, Int) -> Int = { (number1: Int, number2: Int) in
  return number1 + number2
}

addClosures(4, 8) // 12

// short form
var addClosuresTwo = { (number1: Int, number2: Int) -> Int in
  print("hello addClosuresTwo")
  return number1 + number2 // return required
}

addClosuresTwo(3, 3) // 6

var addClosuresThree = { (number1: Int, number2: Int) in
  number1 + number2 // return not required
}

addClosuresThree(4, 6) // 10

// shortest form
var addClosuresFour: (Int, Int) -> Int = { $0 + $1 }
addClosuresFour(4, 4) // 8

// another example
let callStringWithClosure: () -> String = { () in
  print("hello callStringWithClosure")
  return "hello, im a closure"
}

callStringWithClosure() // "hello, im a closure"

// skip return
let callStringWithClosureTwo: () -> String = { () in
  "hello, im a closure"
}

// Short Form {#no-parameter}
// type defined explicitly
let callStringWithClosureThree: () -> String = { "hello im a closure" }

// type define implicitly
let callStringWithClosureFour = { "hello im a closure" }
callStringWithClosureFour // () -> String
