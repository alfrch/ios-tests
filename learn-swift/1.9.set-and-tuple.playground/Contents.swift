import Foundation

// multiple ways to create arrays
var arrayOne: [Double] = []
var arrayTwo = [Double]()

var arrayThree: Array<Double> = []
var arrayFour: Array<Double> = Array()
var arrayFive = Array([1123.08, 234.23])

var arraySix = Array(1...100)
var arraySeven = Array(repeatElement("noh", count: 10))

// multiple ways to create sets
var setOne: Set = [1, 2, 3, 4, 5]
var setTwo: Set<String> = ["alf", "alfrch", "alf the dev"]
var emptySet = Set<String>()

// built-in set methods
emptySet.insert("alf")
emptySet.contains("alf")
emptySet.remove("alf")

// create two arrays
var oddNumbers = [Int]()
var evenNumbers = [Int]()

for number in 1...10 {
  if number % 2 == 0 {
    evenNumbers.append(number)
  } else {
    oddNumbers.append(number)
  }
}

// ternary operator
for number in 1...1 {
  (number % 2 == 0) ? evenNumbers.append(number) : oddNumbers.append(number)
}

oddNumbers
evenNumbers

// convert Array to Set
var oddNumberSet = Set(oddNumbers)  // no longer has defined order
let evenNumberSet = Set(evenNumbers)  // no longer has defined order

// union
//oddNumberSet.union(evenNumberSet)

// symmetric difference
//oddNumberSet.symmetricDifference(evenNumberSet)

// intersection
//oddNumberSet.intersection(evenNumberSet)

// substract
oddNumberSet.subtract(evenNumberSet)

var numberSet = Set([1, 2, 3])
let secondNumberSet = Set([1, 2])

numberSet.subtract(secondNumberSet)
print(numberSet)

// sort
let sortedArray = evenNumberSet.sorted()
print(sortedArray)

// functional programming
let sortedArrayFromHighToLow = evenNumberSet.sorted { $0 > $1 }
print(sortedArrayFromHighToLow)

// introducing tuples
let firstScore = (name: "alf", score: 9)

// access the elements through calling the index
firstScore.0
firstScore.1

// access the elements through the labels
firstScore.name
firstScore.score

let secondScore = ("rob", 10)
secondScore.0
secondScore.1

// not reccomend
let httpFailure: [Any] = [401, "fail"]

// reccomended
let httpSuccess = (code: 200, description: "success")
httpSuccess.code

// created multiple instances in a single line -> okay
var dog = "dog", cat = "cat"
print(dog)

// use tuple -> better
var (x, y, z) = (1, 2, 3)
print(x)
print(y)

// convert an array into a tuple that contains index and element through the enumerated() method
var shoppingList = ["eggs", "milk", "rice"]

for (index, value) in shoppingList.enumerated() {
  print(index, value)
}
