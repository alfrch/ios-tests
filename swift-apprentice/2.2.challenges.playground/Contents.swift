import Foundation

/*-----------------------------------------------------------
 1. Create a constant called coordinates and assign a tuple containing two and three to it.
 -----------------------------------------------------------*/

let coordinates = (x: 2, y: 3)

/*-----------------------------------------------------------
 2. Create a constant called namedCoordinate with a row and column component.
 -----------------------------------------------------------*/

let namedCoordinate = (row: 4, column: 5)

/*-----------------------------------------------------------
 3. Which of the following are valid statements?
 -----------------------------------------------------------*/

//let character1: Character = "Dog" // not valid -> Cannot convert value of type 'String' to specified type 'Character'

let character2: Character = "🐶" // valid

let string1: String = "Dog" // valid

let string2: String = "🐶" // valid

/*-----------------------------------------------------------
 4. Is this valid code?
 -----------------------------------------------------------*/

let tuple1 = (day: 15, month: 8, year: 2020)
//let day = tuple.Day // not valid -> Value of tuple type '(day: Int, month: Int, year: Int)' has no member 'Day'
let day = tuple1.day // valid

/*-----------------------------------------------------------
 5. What is wrong with the following code?
 -----------------------------------------------------------*/

//let name = "Giant"
//name += " Jack" // Left side of mutating operator isn't mutable: 'name' is a 'let' constant

var name = "Giant"
name += " Jack"

/*-----------------------------------------------------------
 6. What is the type of the constant named value?
 -----------------------------------------------------------*/

let tuple2 = (100, 1.5, 10)
let value = tuple2.1 // 1.5

/*-----------------------------------------------------------
 7. What is the value of the constant named month?
 -----------------------------------------------------------*/

let tuple3 = (day: 15, month: 8, year: 2019)
let month = tuple3.month // 8

/*-----------------------------------------------------------
 8. What is the value of the constant named summary?
 -----------------------------------------------------------*/

let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)" // 10 multiplied by 5 equals 50

/*-----------------------------------------------------------
 9. What is the sum of a and b, minus c?
 -----------------------------------------------------------*/

let a = 4
let b: Int32 = 100
let c: UInt8 = 12

let sum = 4 + Int(b) - Int(c) // 92

/*-----------------------------------------------------------
 10. What is the numeric difference between Double.pi and Float.pi?
 -----------------------------------------------------------*/



