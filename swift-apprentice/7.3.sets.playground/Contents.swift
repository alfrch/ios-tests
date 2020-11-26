import UIKit

// creating sets
let setOne: Set<Int> = [1]

// set literals
let someArray = [1, 2, 3, 1]

var explicitSet: Set<Int> = [1, 2, 3, 1]

var someSet = Set([1, 2, 3, 1])
print(someSet) // [3, 1, 2] but the order is not defined

// accessing elements
print(someSet.contains(1)) // true
print(someSet.contains(4)) // false

// adding and removing elements
someSet.insert(5)

let removedElement = someSet.remove(1)
print(removedElement!) // 1
