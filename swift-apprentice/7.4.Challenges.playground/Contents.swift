import Foundation

/*-----------------------------------------------------------
 1. Which of the following are valid statements?
 -----------------------------------------------------------*/

let array1 = [Int]() // valid

//let array2 = [] // not valid

let array3: [String] = [] // valid



/*-----------------------------------------------------------
 For the next five statements, array4 has been declared as:
 -----------------------------------------------------------*/

let array4 = [1, 2, 3]

print(array4[0])

//print(array4[5]) // Fatal error: Index out of range

array4[1...2]

//array4[0] = 4 // Cannot assign through subscript: 'array4' is a 'let' constant

//array4.append(4) // Cannot use mutating member on immutable value: 'array4' is a 'let' constant



/*-----------------------------------------------------------
 For the final five statements, array5 has been declared as:
 -----------------------------------------------------------*/

var array5 = [1, 2, 3]

array5[0] = array5[1]

array5[0...1] = [4, 5]

//array5[0] = "Six" // Cannot assign value of type 'String' to subscript of type 'Int'

//array5 += 6 // Cannot convert value of type 'Int' to expected argument type 'Array<Int>'

for item in array5 { print(item) }



/*-----------------------------------------------------------
 2. Write a function that removes the first occurrence of a given integer from an array of integers. This is the signature of the function:
 -----------------------------------------------------------*/

let array6 = [1, 2, 3, 4, 1, 2, 2, 4, 5]

func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
//  var newArray: [Int] = array // solution 1 and 2
  var newArray: [Int] = [] // solution 3
  var counter = 0
  
  // solution 1 by removing item on newArray
//  for (index, number) in newArray.enumerated() {
//    if count < 1 && item == number {
//      newArray.remove(at: index)
//      counter += 1
//    }
//  }
  
  // solution 2 by removing item on newArray
//  for index in 0..<array.count {
//    if counter < 1 && item == array[index] {
//      newArray.remove(at: index)
//      counter += 1
//    }
//  }
  
  // solution 3 by appending newArray
  for index in 0..<array.count {
    if item == array[index] {
      counter += 1
      
      if counter > 1 {
        newArray.append(array[index])
      }
      
    } else {
      newArray.append(array[index])
    }
    
  }
  
  return newArray
}

print("2. result: ", removingOnce(2, from: array6))



/*-----------------------------------------------------------
 3. Write a function that removes all occurrences of a given integer from an array of
 integers. This is the signature of the function:
 -----------------------------------------------------------*/

func removing(_ item: Int, from array: [Int]) -> [Int] {
  var newArray: [Int] = array
  
  for i in array {
    if item != i {
      newArray.append(i)
    }
  }
  
  return newArray
}

print("3. result: \(removing(2, from: array6))")
