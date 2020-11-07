import Foundation

// constant time with O(1)
let names: [String] = ["zaphod", "trillian", "arthur", "marvin", "humma"]
let name = names[2]

// linear time with O(n)
let numbers: [Int] = [8, 5, 2, 10, 17, 2, 11]
var sum = 0

for number in numbers {
  sum += number
}

print(sum)

// 
