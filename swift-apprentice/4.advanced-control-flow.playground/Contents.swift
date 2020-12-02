import Foundation

/*-----------------------------------------------------------
 Countable ranges
 -----------------------------------------------------------*/

let closedRange = 0...5 // countable closed range

let halfOpenRange = 0..<5 // countable half-open range

/*-----------------------------------------------------------
 A Random Interlude
 -----------------------------------------------------------*/

while Int.random(in: 1...6) != 6 {
  print("Not a six")
}
print("")

/*-----------------------------------------------------------
 For loops
 -----------------------------------------------------------*/

let count = 10
var sum = 0

for i in 1...count {
  sum += i
}
sum // 55

/* */

sum = 1
var lastSum = 0

for _ in 0..<count {
  let temp = sum
  sum = sum + lastSum
  lastSum = temp
}

/* */

sum = 0
for i in 1...count where i % 2 == 1 {
  sum += i
}
sum // 25

/*-----------------------------------------------------------
 Continue and labeled statements
 -----------------------------------------------------------*/

/* Take the example of an 8 by 8 grid, where each cell holds a value of the row multiplied by the column. calculate the sum of all cells but exclude all even rows */

sum = 0

for row in 0..<8 {
  if row % 2 == 0 {
    continue
  }
  
  for column in 0..<8 {
    sum += row * column
  }
}
sum // 448

/* */

sum = 0

rowLoop: for row in 0..<8 {
  columnLoop: for column in 0..<8 {
    if row == column {
      continue
    }
    sum += row * column
  }
}
sum // 644

/*-----------------------------------------------------------
 Mini-exercises
 -----------------------------------------------------------*/

/* 1. Create a constant named range, and set it equal to a range starting at 1 and ending with 10 inclusive. Write a for loop that iterates over this range and prints the square of each number. */

let range = 1...10

for i in range {
  let square = i * i // pangkat 2 angka itu sendiri
  print(square)
}
print("")

/* 2. Write a for loop to iterate over the same range as in the exercise above and print the square root of each number. You’ll need to type convert your loop constant. */

for i in range {
  let squareRoot = sqrt(Double(i)) // akar pangkat angka itu sendiri
  print(squareRoot)
}
print("")

/* 3. Above, you saw a for loop that iterated over only the even rows like so. Change this to use a where clause on the first for loop to skip even rows instead of using continue. Check that the sum is 448 as in the initial example. */

sum = 0

for row in 0..<8 where row % 2 == 1 {
  for column in 0..<8 {
    sum += row * column
  }
}
sum // 448

/*-----------------------------------------------------------
 Switch statements
 -----------------------------------------------------------*/

let number = 10

switch number {
case 0:
  print("Zero")
default:
  print("Non-zero")
}

switch number {
case 10:
  print("It's ten!")
default:
  break
}

let string = "Dog"

switch string {
case "Cat", "Dog":
  print("Animal is a house pet.")
default:
  print("Animal is not a house pet.")
}

/*-----------------------------------------------------------
 Advanced switch statements
 -----------------------------------------------------------*/

let hourOfDay = 12
var timeOfDay = ""

switch hourOfDay {
case 0, 1, 2, 3, 4, 5:
  timeOfDay = "Early morning"
case 6, 7, 8, 9, 10, 11:
  timeOfDay = "Morning"
case 12, 13, 14, 15, 16:
  timeOfDay = "Afternoon"
case 17, 18, 19:
  timeOfDay = "Evening"
case 20, 21, 22, 23:
  timeOfDay = "Late evening"
default:
  timeOfDay = "INVALID HOUR!"
}

print(timeOfDay)

switch hourOfDay {
case 0...5:
  timeOfDay = "Early morning"
case 6...11:
  timeOfDay = "Morning"
case 12...16:
  timeOfDay = "Afternoon"
case 17...19:
  timeOfDay = "Evening"
case 20..<24:
  timeOfDay = "Late evening"
default:
  timeOfDay = "INVALID HOUR!"
}

/* */

switch number {
case let x where x % 2 == 0:
  print("Even")
default:
  print("Odd")
}

switch number {
case _ where number % 2 == 0:
  print("Even")
default:
  print("Odd")
}

/*-----------------------------------------------------------
 Partial matching
 -----------------------------------------------------------*/

let coordinates = (x: 3, y: 2, z: 5)

switch coordinates {
case (0, 0, 0): // 1
  print("Origin")
case (_, 0, 0): // 2
  print("On the x-axis.")
case (0, _, 0): // 3
  print("On the y-axis.")
case (0, 0, _): // 4
  print("On the z-axis.")
default: // 5
  print("Somewhere in the space")
}

/*
 This switch statement makes use of partial matching. Here’s what each case does, in
 order:
 1. Matches precisely the case where the value is (0, 0, 0). This is the origin of 3D space.
 2. Matches y=0, z=0 and any value of x. This means the coordinate is on the x-axis.
 3. Matches x=0, z=0 and any value of y. This means the coordinate is on the y-axis.
 4. Matches x=0, y=0 and any value of z. This means the coordinate is on the z-axis.
 5. Matches the remainder of coordinates.
 
 You’re using the underscore to mean that you don’t care about the value.
 */

/* If you don’t want to ignore the value, then you can bind it and use it in your switch statement. */

switch coordinates {
case (0, 0, 0):
  print("Origin")
case (let x, 0, 0):
  print("On the x-axis at x = \(x)")
case (0, let y, 0):
  print("On the y-axis at y = \(y)")
case (0, 0, let z):
  print("On the z-axis at z = \(z)")
case let (x, y, z):
  print("Somewhere in the space at x = \(x), y = \(y), z = \(z)")
}

switch coordinates {
case let (x, y, _) where y == x:
  print("Along the y = x line.")
case let (x, y, _) where y == x * x:
  print("Aling the y = x^2 line.")
default:
  break
}

/*-----------------------------------------------------------
 Mini-exercises
 -----------------------------------------------------------*/

/* 1. Write a switch statement that takes an age as an integer and prints out the life stage related to that age. You can make up the life stages, or use my categorization as follows: 0-2 years, Infant; 3-12 years, Child; 13-19 years, Teenager; 20-39, Adult; 40-60, Middle aged; 61+, Elderly. */

let age = 29

switch age {
case 0...2:
  print("Infant")
case 3...12:
  print("Child")
case 13...19:
  print("Teenager")
case 20...39:
  print("Adult")
case 40...60:
  print("Middle aged")
case _ where age >= 61:
  print("Elderly")
default:
  print("Invalid age")
}

/* 2. Write a switch statement that takes a tuple containing a string and an integer. The string is a name, and the integer is an age. Use the same cases that you used in the previous exercise and let syntax to print out the name followed by the life stage. For example, for myself it would print out "Matt is an adult.". */

let tuple = (name: "Bitchard", age: 23)

switch tuple {
case (let name, 0...2):
  print("\(name) is a infant")
case (let name, 3...12):
  print("\(name) is a child")
case (let name, 13...19):
  print("\(name) is a teenager")
case (let name, 20...39):
  print("\(name) is a adult")
case (let name, 40...60):
  print("\(name) is a middle aged")
case let (name, age) where age >= 61:
  print("\(name) is a elderly")
default:
  print("Invalid age")
}
print("")

/*-----------------------------------------------------------
 Challenges
 -----------------------------------------------------------*/

/* 1. In the following for loop, what will be the value of sum, and how many iterations will happen? */

sum = 0
for i in 0...5 {
  sum += i // 6 times
}
sum // 15

/* 2. In the while loop below, how many instances of “a” will there be in aLotOfAs? Hint: aLotOfAs.count tells you how many characters are in the string aLotOfAs. */

var aLotOfAs = ""
while aLotOfAs.count < 10 {
  aLotOfAs += "a"
}
aLotOfAs.count // 10 "aaaaaaaaaa"

/* 3. Consider the following switch statement: */

/* What will this code print when coordinates is each of the following? */

let coordinates1 = (1, 5, 0) // "On the x/y plane"
let coordinates2 = (2, 2, 2) // "x = y = z"
let coordinates3 = (3, 0, 1) // "On the x/z plane"
let coordinates4 = (3, 2, 5) // "Nothing special"
let coordinates5 = (0, 2, 4) // "On the y/z plane"

switch coordinates5 {
case let (x, y, z) where x == y && y == z:
  print("x = y = z")
case (_, _, 0):
  print("On the x/y plane")
case (_, 0, _):
  print("On the x/z plane")
case (0, _, _):
  print("On the y/z plane")
default:
  print("Nothing special")
}
print("")

/* 4. A closed range can never be empty. Why? */

/* 5. Print a countdown from 10 to 0. (Note: do not use the reversed() method, which will be introduced later.) */

for i in 0...10 {
  print(10 - i)
}
print("")

/* 6. Print 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0. (Note: do not use the stride(from:by:to:) function, which will be introduced later.) */

var value = 0.0

for _ in 0...10 {
  print(value)
  value += 0.1
}
print("")

// Solution 2
for counter in 0...10 {
  print(Double(counter) * 0.1)
}

/*-----------------------------------------------------------
 -----------------------------------------------------------*/
