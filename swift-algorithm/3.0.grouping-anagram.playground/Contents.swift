import UIKit

/*
 
 given array of string, group anagrams together.
 
 example:
 input: ["eat", "tea", "tan", "ate", "nat", "bat"]
 output:
 [
  ["ate", "eat", "tea"],
  ["nat", "tan"]
  ["bat]
 ]
 
 note:
 • all inputs will be lowercase
 • the order of output does not matter
 
 */

func groupAnagrams(_ strs: [String]) -> [[String]] {
  let dictionary = Dictionary(grouping: strs, by: { String($0).sorted() })
  let arrayOfAnagram = Array(dictionary.values)
  return arrayOfAnagram
}

let words = ["eat", "tea", "tan", "ate", "nat", "bat"]

print(groupAnagrams(words))
