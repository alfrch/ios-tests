import Foundation

/*-----------------------------------------------------------
 Comparison operators
 -----------------------------------------------------------*/

let yes = true
let no = false

/*-----------------------------------------------------------
 Boolean operators
 -----------------------------------------------------------*/

let doesOneEqualTwo = (1 == 2) // false

let doesOneNotEqualTwo = (1 != 2) // true

let alsoTrue = !(1 == 2) // true

let isOneGreaterThanTwo = (1 > 2) // false
let isOneLessThanTwo = (1 < 2) // true

/*-----------------------------------------------------------
 Boolean login
 -----------------------------------------------------------*/

let and = true && true

let or = true || false

let andTrue = 1 < 2 && 4 > 3 // true
let andFalse = 1 < 2 && 3 > 4 // false

let andOr = (1 < 2 && 3 > 4) || 1 < 4

/*-----------------------------------------------------------
 String equality
 -----------------------------------------------------------*/

let guess = "dog"
let dogEqualCat = guess == "cat"

let order = "cat" < "dog"

/*-----------------------------------------------------------
 Toogling a boll
 -----------------------------------------------------------*/

var switchState = true
switchState.toggle() // false
switchState.toggle() // true

/*-----------------------------------------------------------
 Mini exercises
 -----------------------------------------------------------*/

/*1. Create a constant called myAge and set it to your age. Then, create a constant named isTeenager that uses Boolean logic to determine if the age denotes someone in the age range of 13 to 19.*/

let myAge = 28
let isTeenager = myAge >= 13 && myAge <= 19

/*2. Create another constant named theirAge and set it to my age, which is 30. Then, create a constant named bothTeenagers that uses Boolean logic to determine if both you and I are teenagers.*/

let theirAge = myAge
let bothTeenagers = (myAge >= 13 && myAge <= 19) && (theirAge >= 13 && theirAge <= 19)

/*3. Create a constant named reader and set it to your name as a string. Create a constant named author and set it to my name, Matt Galloway. Create a constant named authorIsReader that uses string equality to determine if reader and author are equal.*/

let reader = "Richard"
let author = "Galvin"
let authorIsReader = reader == author

/*4. Create a constant named readerBeforeAuthor which uses string comparison to determine if reader comes before author.*/

let readerBeforeAuthor = reader < author

/*-----------------------------------------------------------
 The if statement
 -----------------------------------------------------------*/

if 2 > 1 {
  print("Yes, 2 is greater than 1")
}
print("")

let animal = "Fox"

if animal == "Cat" || animal == "Dog" {
  print("Animal is a house pet.")
} else {
  print("Animal is not a house pet.")
}
print("")

let hourOfDay = 12
var timeOfDay = ""

if hourOfDay < 6 {
  timeOfDay = "Early morning"
} else if hourOfDay < 12 {
  timeOfDay = "Morning"
} else if hourOfDay < 17 {
  timeOfDay = "Afternoon"
} else if hourOfDay < 20 {
  timeOfDay = "Evening"
} else if hourOfDay < 24 {
  timeOfDay = "Late evening"
} else {
  timeOfDay = "INVALID HOUR!"
}
print(timeOfDay)
print("")

/*-----------------------------------------------------------
 Encapsulating variables
 -----------------------------------------------------------*/

/*You earn $25 for every hour up to 40 hours, and $50 for every hour thereafter.*/

var hoursWorked = 45
var price = 0

if hoursWorked > 40 {
  let hoursOver40 = hoursWorked - 40 // 5 = 45 - 40
  price += hoursOver40 * 50 // 250 = 5 * 50
  hoursWorked -= hoursOver40 // 40 = 45 - 5
}

price += hoursWorked * 25 // 1250 = 250 + (40 * 25)
print(price)
print("")

/*-----------------------------------------------------------
 The ternary conditional operator
 -----------------------------------------------------------*/

let a = 5
let b = 10

/*
let min: Int
if a < b {
  min = a
} else {
  min = b
}

let max: Int
if a > b {
  max = a
} else {
  max = b
}
 */

// (<CONDITION>) ? <TRUE VALUE> : <FALSE VALUE>

let min = a < b ? a : b
let max = a > b ? a : b

/*-----------------------------------------------------------
 Mini-exercises
 -----------------------------------------------------------*/

/*1. Create a constant named myAge and initialize it with your age. Write an if statement to print out Teenager if your age is between 13 and 19, and Not a teenager if your age is not between 13 and 19.*/

let myAge1 = 29
if myAge1 >= 13 && myAge1 <= 19 {
  print("Teenager")
} else {
  print("Not a teenager")
}
print("")

/*2. Create a constant named answer and use a ternary condition to set it equal to the result you print out for the same cases in the above exercise. Then print out answer.*/

let answer = myAge1 >= 13 && myAge1 <= 19 ? "Teenager" : "Not a teenager"
print(answer)
print("")

/*-----------------------------------------------------------
 Loops
 -----------------------------------------------------------*/

/*-----------------------------------------------------------
 While loops
 -----------------------------------------------------------*/

var sum = 1

while sum < 1000 {
  sum = sum + (sum + 1)
}

/*-----------------------------------------------------------
 Repeat-while loops
 -----------------------------------------------------------*/

sum = 1

repeat {
  sum = sum + (sum + 1)
} while sum < 1000

// In this example, the outcome is the same as before. However, that isn’t always the case — you might get a different result with a different condition.

// while loop
sum = 1

while sum < 1 {
  sum = sum + (sum + 1)
}

// repeat-while loop

sum = 1

repeat {
  sum = sum + (sum + 1)
} while sum < 1

/*-----------------------------------------------------------
 Breaking out of loop
 -----------------------------------------------------------*/

sum = 1

while true {
  sum = sum + (sum + 1)
  if sum >= 1000 {
    break
  }
}

/*-----------------------------------------------------------
 Mini-exercises
 -----------------------------------------------------------*/

/*1. Create a variable named counter and set it equal to 0. Create a while loop with the condition counter < 10 which prints out counter is X (where X is replaced with counter value) and then increments counter by 1.*/

var counter = 0

while counter < 10 {
  print("counter is \(counter)")
  counter += 1
}
print("")

/*2. Create a variable named counter and set it equal to 0. Create another variable named roll and set it equal to 0. Create a repeat-while loop. Inside the loop, set roll equal to Int.random(in: 0...5) which means to pick a random number between 0 and 5. Then increment counter by 1. Finally, print After X rolls, roll is Y where X is the value of counter and Y is the value of roll. Set the loop condition such that the loop finishes when the first 0 is rolled.*/

counter = 0
var roll = 0

repeat {
  roll = Int.random(in: 0...5)
  counter += 1
  print("After \(counter) rolls, roll is \(roll)")
} while roll != 0

/*-----------------------------------------------------------
 Challenges
 -----------------------------------------------------------*/

/* 1. What’s wrong with the following code? */

let firstName = "Gavin"

if firstName == "Gavin" {
  let lastName = "Belson"
} else if firstName == "Richard" {
  let lastName = "Hendriks"
}
//let fullName = firstName + " " + lastName // Cannot find 'lastName' in scope

/* 2. In each of the following statements, what is the value of the Boolean answer constant? */

let answer1 = true && true // true
let answer2 = false || false // false
let answer3 = (true && 1 != 2) || ( 4 > 3 && 100 < 1) // true
let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0) // true

/* 3. Suppose the squares on a chessboard are numbered left to right, top to bottom, with 0 being the top-left square and 63 being the bottom-right square. Rows are numbered top to bottom, 0 to 7. Columns are numbered left to right, 0 to 7. Given a current position on the chessboard, expressed as a row and column number, calculate the next position on the chessboard, again expressed as a row and column number. The ordering is determined by the numbering from 0 to 63. The position after 63 is again 0. */


