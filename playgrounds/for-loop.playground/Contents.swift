import Foundation

// iterating with the for loop in swift

// can read as: for every "item" in "items", execute this code
//for item in items {
//  // do this
//}

// loop over collections with for-in
// array
// example:
let names = ["Arthur", "Zaphod", "Trillian", "Ford", "Marvin"]

for name in names {
  print(name)
}

print("")

// example:
let numbers = [1, 2, 3, 4, 5, 6]
var sum = 0

for i in numbers {
  sum += i
}
print(sum)
print("")

// example: create a function that returns the sum of any array of integer numbers
func sum(_ numbers: [Int]) -> Int {
  var sum = 0
  
  for n in numbers {
    sum += n
  }
  
  return sum
}

let result = sum([23, 11, 9, 3, 24, 77])
print(result)
print("")

// example: use a collection’s index to reference a particular item
var newSum = 0

for i in 0..<numbers.count {
  newSum += numbers[i]
}

print(newSum)
print("")

// dictionaries
// example:
let scores = ["bob": 42, "alice": 99, "jane": 33]

for (name, score) in scores {
  print("\(name)'s score is \(score)")
}

print("")

// example:
let primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31]

for (n, prime) in primes.enumerated() {
  print("\(n) = \(prime)")
}

print("")

// loop over ranges with for-in
// example:
for n in 1...5 {
  print(n)
}

// example:
let xyz = "x"..."z"
print(xyz.contains("y"))
print("")

// example:
for i in 0..<5 {
  print(i)
}

print("")

// example:
let items = [1, 2, 3, 5, 6, 7]

// The index of the last item of an array is always equal to the size of the array minus one. If you want a range that runs from 0 to the end of the array
for i in 0..<items.count {
  print(i)
}

print("")

// loop with while and repeat-while
// example:
let condition = true

while (condition == true) {
  // repeat this
}

repeat {
  // do this
} while (condition == true)

