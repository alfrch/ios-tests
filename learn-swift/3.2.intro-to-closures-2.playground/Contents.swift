import Foundation

// add two numbers using closure
var addWithClosures: (Int, Int) -> Int = { (number1: Int, number2: Int) in
  return number1 + number2
}

// return string
var returnString: () -> String = { () in
  "hello"
}

let returnedValue = returnString() // "hello"

// return closure indirectly
func returnClosure() -> ((Int, Int) -> Int) {
  return addWithClosures
}

let addClosure = returnClosure()
addClosure(4, 10)
returnClosure()(4, 10) // addWithClosure(4, 10)

// return closure directly
func returnClosureDirectly() -> ((Int, Int) -> Int) {
  return { (number1, number2) in number1 + number2 }
}

returnClosureDirectly()(4, 10) // 14

// short form
func returnClosureDirectlyTwo() -> ((Int, Int) -> Int) {
  return { $0 + $1 }
}

returnClosureDirectlyTwo()(4, 10) // 14

// pass closure
func insertClosureBlock(closureBlock: () -> String) -> String {
  return closureBlock()
}

// design closure block
func hello() -> String {
  return "hello"
}

// pass closure indirectly
insertClosureBlock(closureBlock: hello) // "hello"

// pass closure directly
insertClosureBlock(closureBlock: { return "hello1" }) // "hello1"
insertClosureBlock(closureBlock: { "hello2" }) // "hello2"
