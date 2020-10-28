import Foundation

// typical else-if
func checkDriningAge() {
  let canDrink = true
  
  if canDrink {
    print("you may enter")
    // more code
  } else {
    // more code
    print("you may not enter")
  }
}

// guard statement
func checkDrinkProgram() {
  let canDrink = true
  
  guard canDrink else {
    // if canDrink == false, run this block
    print("you may not enter")
    return
  }
  
  print("you may drink")
}

// unwrap optionals with else-if
var name: String? = "alf the dev"
var address: String? = "jakarta"
var age: Int? = 40

// the worst nightmare
func unwrapOneByOne() {
  if let name = name {
    if let address = address {
      if let age = age {
        print("\(name), \(address), \(age)")
      } else {
        print("age is missing")
      }
    } else {
      print("address is missing")
    }
  } else {
    print("name is missing")
  }
}

// slightly better
func unwrapBetter() {
  if let name = name {
    print("yes name")
  } else {
    print("no name")
  }
  
  if let address = address {
    print("yes address")
  } else {
    print("no address")
  }
  
  if let age = age {
    print("yes age")
  } else {
    print("no age")
  }
}

// unwrap with guard
func unwrapOneByOneWithGuard() {
  guard let name = name else {
    print("name missing")
    return
  }
  
  guard let address = address else {
    print("address missing")
    return
  }
  
  print(name)
  print(address)
  print(age)
}

// unwrap multiple optionals with else-if
func unwrap() {
  if let name = name, let address = address, let age = age {
    print("my name is \(name), i lived at \(address), my age \(age)")
  } else {
    print("something is missing. if any one of those is missing/contain nil")
  }
}

// unwrap multiple optionals with guard
func unwrapWithGuard() {
  guard let name = name, let address = address, let age = age else {
    print("something is missing. if any one of those is missing/contain nil")
    return
  }
  print("my name is \(name), i lived at \(address), my age \(age)")
}

// defer statement
func simpleDefer() {
  defer { print("chill, later") }
  print("print first")
}

simpleDefer()

for i in 1...3 {
  defer { print("deferred \(i)") }
  print("first \(i)")
}
