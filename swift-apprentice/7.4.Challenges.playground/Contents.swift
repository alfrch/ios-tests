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

let array6 = [1,2, 3, 4, 1, 2, 2, 4, 5]

func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
  /* Solution 1 */
  
//   var resultArray: [Int] = array
//   var counter = 0
//
//   for (index, number) in resultArray.enumerated() {
//     if counter < 1 && item == number {
//      resultArray.remove(at: index)
//      counter += 1
//     }
//   }
  
  /* Solution 2 */
  
//  var resultArray: [Int] = array
//  var counter = 0
//
//  for index in 0..<array.count {
//    if counter < 1 && item == array[index] {
//      resultArray.remove(at: index)
//      counter += 1
//    }
//  }
  
  /* Solution 3 */
  
//  var resultArray: [Int] = []
//  var counter = 0
//
//  for index in 0..<array.count {
//    if item == array[index] {
//      counter += 1
//
//      if counter > 1 {
//        resultArray.append(array[index])
//      }
//    } else {
//      resultArray.append(array[index])
//    }
//  }
  
  /* Solution 4 */
  
  var resultArray = array
  if let index = array.firstIndex(of: item) {
    resultArray.remove(at: index)
  }
  
  return resultArray
}

print("2. ", removingOnce(2, from: array6))



/*-----------------------------------------------------------
 3. Write a function that removes all occurrences of a given integer from an array of
 integers. This is the signature of the function:
 -----------------------------------------------------------*/

func removing(_ item: Int, from array: [Int]) -> [Int] {
  var newArray: [Int] = []
  
  for i in array {
    if item != i {
      newArray.append(i)
    }
  }
  
  return newArray
}

print("3. \(removing(2, from: array6))")



/*-----------------------------------------------------------
 4. Arrays have a reversed() method that returns an array holding the same elements as the original array, in reverse order. Write a function that does the same thing, without using reversed(). This is the signature of the function:
 -----------------------------------------------------------*/

let array7 = [1, 2, 3, 4, 5]

func reversed(_ array: [Int]) -> [Int] {
  /* Solution 1 */
  
//  var reverseArray: [Int] = []
//  let totalIndices = array.count - 1
//
////  for index in 0..<array.count {
//  for index in 0...totalIndices {
//    reverseArray.append(array[totalIndices - index])
//  }
//
//  return reverseArray
  
  /* Solution 2 */
  
  var reverseArray: [Int] = []
  
  for item in array {
    reverseArray.insert(item, at: 0)
  }
  
  return reverseArray
}

print("4. \(reversed(array7))")



/*-----------------------------------------------------------
 5. Write a function that returns the middle element of an array. When array size is
 even, return the first of the two middle elememnts.
 -----------------------------------------------------------*/

let array8 = [1, 2, 3]

func middle(_ array: [Int]) -> Int? {
  /* Solution 1 */
  
//  if !array.isEmpty {
//    if array.count == 1 {
//      return array[0]
//    }
//
//    let middleIndex = (array.count - 1) / 2
//    return array[middleIndex]
//  }
//
//  return nil
  
  /* Solution 2 */
  
  guard !array.isEmpty else {
    return nil
  }
  
  return array[array.count/2]
}

print("5. \(middle(array8))")




/*-----------------------------------------------------------
 6. Write a function that calculates the minimum and maximum value in an array of integers. Calculate these values yourself; don’t use the methods min and max. Return nil if the given array is empty.
 -----------------------------------------------------------*/

//func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
//
//}




/*-----------------------------------------------------------
 7. Which of the following are valid statements?
 -----------------------------------------------------------*/

//let dict1: [Int, Int] = [:] // not valid

//let dict2 = [:] // not valid -> Empty collection literal requires an explicit type

let dict3: [Int: Int] = [:] // valid

let dict4 = ["One": 1, "Two": 2, "Three": 3]

//dict4[1]

dict4["One"]

//dict4["Zero"] = 0 // Cannot assign through subscript: 'dict4' is a 'let' constant

//dict4[0] = "Zero"

var dict5 = ["NY": "New York", "CA": "California"]

dict5["NY"]

dict5["WA"] = "Washington"

dict5["CA"] = nil



/*-----------------------------------------------------------
 8. Given a dictionary with two-letter state codes as keys, and the full state names as values, write a function that prints all the states with names longer than eight characters. For example, for the dictionary ["NY": "New York", "CA": "California"], the output would be California.
 -----------------------------------------------------------*/

var dict6 = ["NY": "New York", "CA": "California"]

func stateName(_ dictionary: [String: String]) -> String {
  
  for (_, state) in dictionary {
    if Array(state).count > 8 {
      print(state)
    }
  }
  
  return ""
}

print("8. \(stateName(dict6))")



/*-----------------------------------------------------------
 9. Write a function that combines two dictionaries into one. If a certain key appears in both dictionaries, ignore the pair from the first dictionary.
 -----------------------------------------------------------*/

func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
  
  return [String: String]()
}



/*-----------------------------------------------------------
 10. Declare a function occurrencesOfCharacters that calculates which characters occur in a string, as well as how often each of these characters occur. Return the result as a dictionary. This is the function signature:
 -----------------------------------------------------------*/

let str = "abcdefgaag"

func occurencesOfCharacters(in text: String) -> [Character: Int] {
  var dict: [Character: Int] = [:]
  
  for i in Array(text) {
    // solution 1
//    dict[i, default: 0] += 1
    
    // solution 2
    if let value = dict[i] {
      dict[i] = value + 1
    } else {
      dict[i] = 1
    }
    
  }
  
  return dict
}

print("10. \(occurencesOfCharacters(in: str))")

