import Foundation

// design function
func trailingClosure(number: Int, closure: () -> Void) {
  print("you've entered: \(number)")
  closure()
}

// design closure block
func helloFunc() {
  print("hello, function")
}

helloFunc // () -> Void or () -> ()

let helloClosure = {
  print("hello, closure")
}

// execute function
trailingClosure(number: 100, closure: helloFunc)
trailingClosure(number: 99, closure: helloClosure)

// trailing closure 1
trailingClosure(number: 88, closure: { print("hello 1") } )

// trailing closure 2
trailingClosure(number: 77) { print("hello 2") }

// another example
func trailingClosures(number: Int, closure: (Int) -> Int) {
  let newNumber = closure(number)
  print(newNumber)
}

// without trailing closure
trailingClosures(number: 1000, closure: { number in number * number } )

// with trailing closure
trailingClosures(number: 500) { number in number * number }

trailingClosures(number: 400) { $0 * $0 }
