import Foundation

// array is sorted
let numbers = [1, 2, 4, 6, 8, 9, 11, 13, 16, 17, 20]

var hundredOfNumbers = [Int]()
for i in 1...100 {
  hundredOfNumbers.append(i)
}

// naive approach
func linearSearch(for searchValue: Int, in array: [Int]) -> Bool {
  for num in array {
    if num == searchValue {
      return true
    }
  }
  
  return false
}

linearSearch(for: 8, in: numbers)

// better approach
func binarySearch(for searchValue: Int, in array: [Int]) -> Bool {
  
  var leftIndex = 0
  var rightIndex = array.count - 1
  
  while leftIndex <= rightIndex {
    
    let middleIndex = (leftIndex + rightIndex) / 2
    let middleValue = array[middleIndex]
    
    print("middleValue: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex), array: [\(array[leftIndex])...\(array[rightIndex])]")
    
    if searchValue < middleValue {
      rightIndex = middleIndex - 1
      
    } else if searchValue > middleValue {
      leftIndex = middleIndex + 1
      
    } else { // searchValue == middleValue
      return true
    }
  }
  
  return false
}

binarySearch(for: 99, in: hundredOfNumbers)
