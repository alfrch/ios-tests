import Foundation

// implicit and explicit type
// string
let name: String = "alf"    // explicit
let newName = "alf the dev" // implicit

// numbers
let myAge: Int = 40       // explicit
let myBrothaAge = 30      // implicit
let myGPA: Double = 3.99  // explicit

// fetching profile picture
// if could return "URL" or "nothing"

// successful
let myProfileImageURL: String = "https://www.facebook.com/alfthedev"

// error
//let myProfilePictureURL: String = nil

// introduction to optionals

let myName: String? = nil
let yourName: String? = "alf rch"

print(myName)   // nil
print(yourName) // Optional("alf rch")

let alfAge: Int? = nil
let robAge: Int? = 32
let danAge: Int? = 40

// error
//robAge + danAge

// optionals unwrapping
let profileImageFromFacebook: String? = "ImageURL..."
print(profileImageFromFacebook) // optional

// forced unwrapping
var image = profileImageFromFacebook! // String? converted to String
print(image)  // normal type
print(profileImageFromFacebook!)  // normal type

let newRobAge = robAge!
let newDanAge = danAge!

newRobAge + newDanAge

// force unwrap an optional type whose value contains nil
var img: String? = nil
//let normalImg = img! // error -> normalImg = nil

// implicit unwrapping
let imageFromFacebook: String? = "Alf's face"

if let normalImage = imageFromFacebook {
  print(normalImage)
} else {
  print("there is no image")
}
