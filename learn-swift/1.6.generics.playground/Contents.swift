import UIKit

// access elements
let gpa = [2.8, 3.2, 3.5, 3.8, 3.5]
let persons = ["elon", "steve", "steve"]
let numbers = [3, 20]

// the worst way to access elements
gpa[0]
gpa[1]
gpa[2]

// loop and print
func printDoubleElement(array: [Double]) {
  for gpa in array {
    print(gpa)
  }
}

func printStringElement(array: [String]) {
  for person in array {
    print("hi, \(person)")
  }
}

func printNumberElement(array: [Int]) {
  for number in array {
    print("you're number \(number)")
  }
}

// introducing generics
func genericFunction<anything>(value: anything) {
  print(value)
}

func genericFunctions<WHATEVER>(value: WHATEVER) {
  print(value)
}

genericFunction(value: "alf") // anything is String
genericFunctions(value: true) // WHATEVER is Bool

// generic loop
func printElement<T>(array: [T]) {
  for element in array {
    print(element)
  }
}

// call the function
printElement(array: gpa)
printElement(array: persons)

// non-generic struct
struct Family {
  var members = [String]()
  
  mutating func push(member: String) {
    members.append(member)
  }
}

// non-generic instance
var family = Family()
family.push(member: "luke")
family.members

// generic struct
struct GenericFamily<T> {
  var members = [T]()
  
  mutating func push(member: T) {
    members.append(member)
  }
}

// define type explicitly
var genericFamily = GenericFamily<String>()
genericFamily.push(member: "skywalker")

var newGenericFamily = GenericFamily<Int>()
newGenericFamily.push(member: 3)

// define type implicitly
let happyFamily = GenericFamily(members: [1, 2, 3, 4, 5]) // T becomes Int

// generic extension
extension GenericFamily {
  var firstElement: T? {
    if members.isEmpty {
      return nil
    } else {
      return members[0]
    }
  }
}

let nerdFamilyMember = GenericFamily(members: ["jabba", "jubba"])
let firstElement = nerdFamilyMember.firstElement

// type constraints {#type-constraints}
class Lol {}
class BabyLol: Lol {}

// create a function that only allows to enter Lol
func addLolClassOnly<T: Lol>(array: [T]) {}

addLolClassOnly(array: [Lol(), Lol(), Lol(), BabyLol()])
addLolClassOnly(array: [1, 2, 3, 4, 5])
