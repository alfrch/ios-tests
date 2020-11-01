import Foundation

// typealias for string
typealias Name = String

func insertName(name: Name) {}
insertName(name: "alif")

// typealias for custom class
class Employee {}

typealias MyEmployees = [Employee]
func listEmployees(enterEmployees: MyEmployees) {}

// typealias for tuple
typealias GridPoint = (Int, Int)

func enterPoint(grid: GridPoint) {
  print("you've entered, \(grid.0) and \(grid.1)")
}

enterPoint(grid: (4, 2))

// type definition:
// array type
let arrayOne: Array<String> = ["alf", "alif"] // generic struct
let arrayTwo: [String] = ["alf", "alif"]

// dictionary type
let dictOne: Dictionary<String, Int> = ["alex": 31, "paul": 39] // generic struct
let dictTwo: [String: Int] = ["alex": 31, "paul": 39]

// optional type
var optionalOne: String?
var optionalTwo: Optional<String> // generic enum
