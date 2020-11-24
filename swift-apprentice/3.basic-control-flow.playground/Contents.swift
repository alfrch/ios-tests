import Foundation

// comparison operators

let yes = true
let no = false

// boolean operators

let doesOneEqualTwo = (1 == 2) // false

let doesOneNotEqualTwo = (1 != 2) // true

let alsoTrue = !(1 == 2) // true

let isOneGreaterThanTwo = (1 > 2) // false
let isOneLessThanTwo = (1 < 2) // true

// boolean logic

let and = true && true

let or = true || false

let andTrue = 1 < 2 && 4 > 3 // true
let andFalse = 1 < 2 && 3 > 4 // false

let andOr = (1 < 2 && 3 > 4) || 1 < 4

// string equality

let guess = "dog"
let dogEqualCat = guess == "cat"

let order = "cat" < "dog"

// toogling a bool

var switchState = true
switchState.toggle() // false
switchState.toggle() // true


