import Foundation

// unary operators
!true
!false

// binary operators
1 + 2
4 == 4
1 / 4
5 % 2

// typical else-if
let canDrink = false

if canDrink {
  print("you may enter")
} else {
  print("no no")
}

// tertiary operator
canDrink ? print("you may enter") : print("no no")

// add/even numbers
var evenNumbers: [Int] = []
var oddNumbers: [Int] = []

for number in 1...5 {
  if number % 2 == 0 {
    evenNumbers.append(number)
  } else {
    oddNumbers.append(number)
  }
}

// tertiary operator
for number in 1...5 {
  (number % 2 == 0) ? evenNumbers.append(number) : oddNumbers.append(number)
}

// unwrapping optionals
var age: Int? = nil
var defaultAge: Int = 20
var finalUserAge: Int = Int() // 0

if age != nil {
  finalUserAge = age!
} else {
  finalUserAge = defaultAge
}

// nil-coalescing operator
finalUserAge = age ?? defaultAge

