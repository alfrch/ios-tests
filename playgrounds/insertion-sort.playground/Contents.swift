import Foundation

var numbers: [Int] = [70, 36, 40, 95, 22, 55, 26]

print("we're going to sort these numbers: \(numbers)")

for index in 1..<numbers.count {
  let value = numbers[index]
  var position = index
  
  print("- inspecting value: \(value) at position: \(position)")
  
//  while position > 0 && numbers[position - 1] < value { // sort from biggest to smallest number
  while position > 0 && numbers[position - 1] > value { // sort from smallest to biggest number
    
//    print("-- \(numbers[position - 1]) < \(value), so shifting \(numbers[position - 1]) to the right")
    print("-- \(numbers[position - 1]) > \(value), so shifting \(numbers[position - 1]) to the right")
    
    numbers[position] = numbers[position - 1]
    position -= 1
    
    print("-> \(numbers)")
  }
  
  print("-- found sorted position of \(value) is \(position), so inserting")
  
  numbers[position] = value
  
  print("-> \(numbers)")
  print("")
}

print(numbers)
print("")

func insertionSort<T: Comparable>(_ input: [T], by comparison: (T, T) -> Bool) -> [T] {
  var items = input
  
  for index in 1..<items.count {
    let value = items[index]
    var position = index
    
    while position > 0 && comparison(items[position - 1], value) {
      items[position] = items[position - 1]
      position -= 1
    }
    
    items[position] = value
  }
  
  return items
}

var sortedNumbers = insertionSort([70, 36, 40, 95, 22, 55, 26], by: >)
print(sortedNumbers)

var sortedNames = insertionSort(["Marvin", "Arthur", "Zaphod", "Trillian", "Eddie"], by: {$0 < $1})
print(sortedNames)
