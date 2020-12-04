import Foundation

/*-----------------------------------------------------------
 Function basics
 -----------------------------------------------------------*/

func printMyName() {
  print("My name is Richard Hendricks")
}
printMyName()

/*-----------------------------------------------------------
 Function parameters
 -----------------------------------------------------------*/

func printMultipleOfFive(value: Int) {
  print("\(value) * 5 = \(value * 5)")
}
printMultipleOfFive(value: 10)

//func printMultipleOf(multiplier: Int, andValue: Int) {
//  print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
//}
//printMultipleOf(multiplier: 4, andValue: 2)

//func printMultipleOf(multiplier: Int, and value: Int) {
//  print("\(multiplier) * \(value) = \(multiplier * value)")
//}
//printMultipleOf(multiplier: 4, and: 2)

//func printMultipleOf(_ multiplier: Int, and value: Int) {
//  print("\(multiplier) * \(value) = \(multiplier * value)")
//}
//printMultipleOf(4, and: 2)

//func printMultipleOf(_ multiplier: Int, _ value: Int) {
//  print("\(multiplier) * \(value) = \(multiplier * value)")
//}
//printMultipleOf(4, 2)

func printMultipleOf(_ multiplier: Int, _ value: Int = 1) {
  print("\(multiplier) * \(value) = \(multiplier * value)")
}
printMultipleOf(4)

/* -----------------------------------------------------------
 Return values
 -----------------------------------------------------------*/

// define a function that returns a value
func multiply(_ number: Int, by multiplier: Int) -> Int {
  return number * multiplier
}
let result = multiply(4, by: 2)

// return multiple values through the use of tuples
func multiplyAndDivide(_ number: Int, by factor: Int) -> (product: Int, quotient: Int) {
  return (number * factor, number / factor)
}
let results = multiplyAndDivide(4, by: 2)
let product = results.product
let quotient = results.quotient

/* -----------------------------------------------------------
 Advanced parameter handling
 -----------------------------------------------------------*/

//func incrementAndPrint(_ value: Int) {
//  value += 1 // Left side of mutating operator isn't mutable: 'value' is a 'let' constant
//  print(value)
//}

func incrementAndPrint(_ value: inout Int) {
  value += 1
  print(value)
}
var value = 5
incrementAndPrint(&value)
print(value)

/* -----------------------------------------------------------
 Overloading
 -----------------------------------------------------------*/

func getValue() -> Int {
  return 31
}

func getValue() -> String {
  return "Gavin belson"
}

//let value = getValue() // Ambiguous use of 'getValue()'

let valueInt: Int = getValue()
let valueString: String = getValue()

/* -----------------------------------------------------------
 Mini-exercises
 -----------------------------------------------------------*/

/* 1. Write a function named printFullName that takes two strings called firstName and lastName. The function should print out the full name defined as firstName + " " + lastName. Use it to print out your own full name. */

func printFullName(firstName: String, lastName: String) {
  print(firstName + " " + lastName)
}
printFullName(firstName: "Richie", lastName: "Rich")

/* 2. Change the declaration of printFullName to have no external name for either parameter. */

func printFullName(_ firstName: String, _ lastName: String) {
  print(firstName + " " + lastName)
}
printFullName("Richie", "Rick")

/* 3. Write a function named calculateFullName that returns the full name as a string. Use it to store your own full name in a constant. */

func calculateFullName(_ firstName: String, _ lastName: String) -> String {
  firstName + " " + lastName
}
let fullName = calculateFullName("Giant", "Jack")

/* 4. Change calculateFullName to return a tuple containing both the full name and the length of the name. You can find a string’s length by using the count property. Use this function to determine the length of your own full name. */

func calculateFullNameWithLength(_ firstName: String, _ lastName: String) -> (name: String, length: Int) {
  let fullName = firstName + " " + lastName
  return (fullName, fullName.count)
}
let fullNameLength = calculateFullNameWithLength("Giant", "Jack").length

/* -----------------------------------------------------------
 Functions as variable
 -----------------------------------------------------------*/

/* assign functions to variables */

func add(_ a: Int, _ b: Int) -> Int {
  return a + b
}
var function = add
function(4, 2)

func substract(_ a: Int, _ b: Int) -> Int {
  return a - b
}
function = substract
function(4, 2)

/* pass functions to other functions */

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
  let result = function(a, b)
  print(result)
}
printResult(add, 4, 2)
print("")


/* -----------------------------------------------------------
 Challenges
 -----------------------------------------------------------*/
print("Challenges: ")

/*
 Challenge 1: Looping with stride functions
 
 In the last chapter you wrote some for loops with countable ranges. Countable ranges are limited in that they must always be increasing by one. The Swift stride(from:to:by:) and stride(from:through:by:) functions let you loop much more flexibly. For example, if you wanted to loop from 10 to 20 by 4’s you can write:
 */

for index in stride(from: 10, to: 22, by: 4) {
  print(index)
}
// prints 10, 14, 18
print("")

for index in stride(from: 10, through: 22, by: 4) {
  print(index)
}
// prints 10, 14, 18, 22
print("")

/* What is the difference between the two stride function overloads? */

/* Write a loop that goes from 10.0 to (and including) 9.0, decrementing by 0.1. */
for index in stride(from: 10.0, through: 9.0, by: -0.1) {
  print(index)
}
print("")

/* Challenge 2: It’s prime time */

func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
//  if number % divisor == 0 {
//    return true
//  }
//  return false
  
//  return number % divisor == 0 ? true : false
  
  number % divisor == 0
}

func isPrime(_ number: Int) -> Bool {
  if number < 0 {
    return false
  }
  
  if number <= 3 {
    return true
  }
  
  let doubleNumber = Double(number)
  let root = Int(doubleNumber.squareRoot())
  for divisor in 2...root {
    if isNumberDivisible(number, by: divisor) {
      return false
    }
  }
  return true
}
isPrime(6) // false
isPrime(13) // true
isPrime(8893) // true

/*
 Challenge 3: Recursive functions
 
 In this challenge, you’re going to see what happens when a function calls itself, a behavior called recursion. This may sound unusual, but it can be quite useful.
 You’re going to write a function that computes a value from the Fibonacci sequence. Any value in the sequence is the sum of the previous two values. The sequence is defined such that the first two values equal 1. That is, fibonacci(1) = 1 and fibonacci(2) = 1.
 */

func fibonacci(_ number: Int) -> Int {
  
  // Hint 1: For values of number less than 0, you should return 0.
  if number < 0 {
    return 0
  }
  
  // Hint 2: To start the sequence, hard-code a return value of 1 when number equals 1 or 2.
  if number == 1 || number == 2 {
    return 1
  }
  
  // Hint 3: For any other value, you’ll need to return the sum of calling fibonacci with number - 1 and number - 2.
  print("\(fibonacci(number - 1)) + \(fibonacci(number - 2)) = \(fibonacci(number - 1) + fibonacci(number - 2))")
  return fibonacci(number - 1) + fibonacci(number - 2)
}
fibonacci(1) // = 1
fibonacci(2) // = 1
fibonacci(3) // = 2
fibonacci(4) // = 3
fibonacci(5) // = 5
fibonacci(10) // = 55




