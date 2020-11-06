import Foundation

// finding a value in an array of integers
let numbers: [Int] = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
let value: Int = 13 // number to find

//numbers.remove(at: ...) // what's the index of number 13?

// naive approach -> loop over every number in the array to check if it's 13
//for (index, number) in numbers.enumerated() {
//  if number == value {
//    print("found it! it's index \(index)\n")
//  }
//}

// binary search
func binarySearch(in numbers: [Int], for value: Int) -> Int? {
  var left: Int = 0
  var right: Int = numbers.count - 1

  while left <= right {
    print("left is \(left), right is \(right)")
    
    let middle: Int = Int(floor(Double(left + right) / 2.0))

    print("looking for \(value) in \(numbers[left...right])")
    print("middle index is \(middle), value is \(numbers[middle])\n")

    if numbers[middle] < value {
      print("\(numbers[middle]) is smaller than \(value), choosing right half of array\n")

      left = middle + 1
    } else if numbers[middle] > value {
      print("\(numbers[middle]) is bigger than \(value), choosing left half of array\n")

      right = middle - 1
    } else {
      return middle
    }
  }

  return nil
}

if let index = binarySearch(in: numbers, for: value) {
  print("found \(value) at index \(index)")
} else {
  print("did not find \(value)")
}

