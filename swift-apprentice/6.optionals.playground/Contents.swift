import Foundation

/*-----------------------------------------------------------
 Introducing Optionals
 -----------------------------------------------------------*/

var errorCode: Int?

errorCode = 100

errorCode = nil

/*-----------------------------------------------------------
 Mini-exercises
 -----------------------------------------------------------*/

/* 1. Make an optional String called myFavoriteSong. If you have a favorite song, set it to a string representing that song. If you have more than one favorite song or no favorite, set the optional to nil. */

var myFavoriteSong: String?

myFavoriteSong = "lalalala"

myFavoriteSong = nil

/* 2. Create a constant called parsedInt and set it equal to Int("10") which tries to parse the string 10 and convert it to an Int. Check the type of parsedInt using Option- Click. Why is it an optional? */

let parsedInt = Int("10")

/* 3. Change the string being parsed in the above exercise to a non-integer (try dog for example). What does parsedInt equal now? */

let parsedInt1 = Int("dog")

/*-----------------------------------------------------------
 Unwrapping optionals
 -----------------------------------------------------------*/

var result: Int? = 30
print(result)
print("")

//print(result + 1) // Value of optional type 'Int?' must be unwrapped to a value of type 'Int'

/*-----------------------------------------------------------
 Force unwrapping
 -----------------------------------------------------------*/

var authorName: String? = "Gavin Belson"
var authorAge: Int? = 30

var unwrappedAuthorName = authorName!
print("Author is \(unwrappedAuthorName)")
print("")

authorName = nil
//print("Author is \(authorName!)") // Fatal error: Unexpectedly found nil while unwrapping an Optional value

if authorName != nil {
  print("Author is \(authorName!)")
} else {
  print("No author.")
}
print("")

/*-----------------------------------------------------------
 Optional binding
 -----------------------------------------------------------*/

if let unwrappedAuthorName1 = authorName {
  print("Author is \(unwrappedAuthorName1)")
} else {
  print("No author.")
}
print("")

/* Because naming things is so hard, it’s common practice to give the unwrapped constant the same name as the optional (thereby shadowing that optional) */

if let authorName = authorName {
  print("Author is \(authorName)")
} else {
  print("No author")
}
print("")

/* unwrap multiple values at the same time */

if let authorName = authorName,
   let authorAge = authorAge {
  print("The author is \(authorName) who is \(authorAge) years old")
} else {
  print("No author or no age")
}
print("")

/* combine unwrapping multiple optionals with additional Boolean checks */

if let authorName = authorName,
   let authorAge = authorAge,
   authorAge >= 40 {
  print("The author is \(authorName) who is \(authorAge) years old")
} else {
  print("No author or no age or age less than 40")
}
print("")

/*-----------------------------------------------------------
 Mini-exercises
 -----------------------------------------------------------*/

/* 1. Using your myFavoriteSong variable from earlier, use optional binding to check if it contains a value. If it does, print out the value. If it doesn’t, print "I don’t have a
 favorite song." */

if let myFavoriteSong = myFavoriteSong {
  print("My favorite song is \(myFavoriteSong)")
} else {
  print("I don't have a favorite song")
}
print("")

/* 2. Change myFavoriteSong to the opposite of what it is now. If it’s nil, set it to a
 string; if it’s a string, set it to nil. Observe how your printed result changes. */

myFavoriteSong = "hahahah"
print(myFavoriteSong)
print("")

/*-----------------------------------------------------------
 Introducing guard
 -----------------------------------------------------------*/

func calculateNumberOfSides(shape: String) -> Int? {
  switch shape {
  case "Triangle":
    return 3
  case "Square":
    return 4
  case "Rectangle":
    return 4
  case "Pentagon":
    return 5
  case "Hexagon":
    return 6
  default:
    return nil
  }
}

/* with if let statement */

func maybePrintSides1(shape: String) {
  let sides = calculateNumberOfSides(shape: shape)
  
  if let sides = sides {
    print("A \(shape) has \(sides) sides.")
  } else {
    print("I don't know the number of sides for \(shape).")
  }
}

/* with guard statement */

func maybePrintSides2(shape: String) {
  guard let sides = calculateNumberOfSides(shape: shape) else {
    print("I don't know the number of sides for \(shape).")
    return
  }
  
  print("A \(shape) has \(sides) sides.")
}

/*-----------------------------------------------------------
 Nil coalescing
 -----------------------------------------------------------*/

var optionalInt1: Int? = 10
var mustHaveResult1 = optionalInt1 ?? 0

var optionalInt2: Int? = 10
var mustHaveResult2: Int

if let unwrapped = optionalInt2 {
  mustHaveResult2 = unwrapped
} else {
  mustHaveResult2 = 0
}

optionalInt2 = nil
mustHaveResult2 = optionalInt2 ?? 0

/*-----------------------------------------------------------
 Challenges
 -----------------------------------------------------------*/

/*
 Challenge 1: You be the compiler
 
 Which of the following are valid statements?
 */

var name: String? = "Gaving" // valid
//var age: Int = nil // not valid -> 'nil' cannot initialize specified type 'Int'
let distance: Float = 26.7 // valid
var middleName: String? = nil // valid

/*
 Challenge 2: Divide and conquer
 
 First, create a function that returns the number of times an integer can be divided by another integer without a remainder. The function should return nil if the division doesn’t produce a whole number. Name the function divideIfWhole.
 Then, write code that tries to unwrap the optional result of the function. There should be two cases: upon success, print "Yep, it divides \(answer) times", and upon failure, print "Not divisible :[".
 
 Finally, test your function:
 1. Divide 10 by 2. This should print "Yep, it divides 5 times."
 2. Divide 10 by 3. This should print "Not divisible :[."
 
 Hint 1: Use the following as the start of the function signature:
 
 func divideIfWhole(_ value: Int, by divisor: Int)
 
 You’ll need to add the return type, which will be an optional!
 
 Hint 2: You can use the modulo operator (%) to determine if a value is divisible by another; recall that this operation returns the remainder from the division of two numbers. For example, 10 % 2 = 0 means that 10 is divisible by 2 with no remainder, whereas 10 % 3 = 1 means that 10 is divisible by 3 with a remainder of 1.
 */

func divideIfWhole(_ value: Int, by divisor: Int) -> Int? {
  if value % divisor == 0 {
    return value / divisor
  } else {
    return nil
  }
}

if let answer = divideIfWhole(10, by: 2) {
  print("Yep, it divides \(answer) times.")
} else {
  print("Not divisible :[.")
}

if let answer = divideIfWhole(10, by: 3) {
  print("Yep, it divides \(answer) times.")
} else {
  print("Not divisible :[.")
}

/*
 Challenge 3: Refactor and reduce
 
 The code you wrote in the last challenge used if statements. In this challenge, refactor that code to use nil coalescing instead. This time, make it print "It divides X times" in all cases, but if the division doesn’t result in a whole number, then X should be 0.
 */

let answer1 = divideIfWhole(10, by: 2) ?? 0
print("It divides \(answer1) times")

let answer2 = divideIfWhole(10, by: 3) ?? 0
print("It divides \(answer2) times")

/*
 Challenge 4: Nested optionals
 
 Consider the following nested optional — it corresponds to a number inside a box inside a box inside a box.
 
 let number: Int??? = 10
 
 If you print number you get the following:
 
 print(number)
 // Optional(Optional(Optional(10)))
 print(number!)
 // Optional(Optional(10))
 
 Do the following:
 1. Fully force unwrap and print number.
 2. Optionally bind and print number with if let.
 3. Write a function printNumber(_ number: Int???) that uses guard to print the number only if it is bound.
 */

let number: Int??? = 10

// 1
print("1. ", number!!!)

// 2
if let number = number {
  if let number = number {
    if let number = number {
      print("2. ", number)
    }
  }
}

// Better way of optionally binding without all the {}
if let n1 = number,
   let n2 = n1,
   let n3 = n2 {
  print("2.1. ", n3)
}

// 3
func printNumber(_ number: Int???) {
  guard let n1 = number, let n2 = n1, let n3 = n2 else { return }
  print("3. ", n3)
}

printNumber(number)

/*-----------------------------------------------------------
 -----------------------------------------------------------*/
