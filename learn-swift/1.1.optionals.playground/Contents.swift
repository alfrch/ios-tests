import Foundation

// implicit and explicit type

// string
let name: String = "alf"     // explicit
let newName = "alf the dev"  // implicit

// numbers
let myAge: Int = 20         // explicit
let mySisterAge = 10        // implicit
let myGPA: Double = 3.2     // explicit

// fetching profile picture

// if could return "URL" or "nothing"

// success
let myProfileImageURL: String = "https//facebook.com/alfthedev"

// error
//let myProfilePictureURL: String = nil

// introduction to optionals

let myName: String? = nil
let yourName: String? = "alfthedev"

print(myName)   // nil
print(yourName) // Optional("alfthedev")

let bobAge: Int? = nil
let robAge: Int? = 123
let danAge: Int? = 3

// optionals rules

// error
//robAge + danAge

// optionals unwrapping

// forced unwrapping

let profileImageFromFacebook: String? = "ImageURL..."
print(profileImageFromFacebook) // Optional

var image = profileImageFromFacebook! // String! converted to string
print(image)  // Normal type
print(profileImageFromFacebook) // Normal type

let newRobAge = robAge!
let newDanAge = danAge!

newRobAge + newDanAge

var img: String? = nil
//let normalImg = img!  // error -> let normalImg = nil

// implicit unwrapping

let imageFromFacebook: String? = "alf's face"

if let normalImage = imageFromFacebook {
  print(normalImage)
} else {
  print("there is no image")
}
