import Foundation

func checkHeight(height: Int) {
  if height > 200 {
    print("you are going to hit your head and fall off")
  } else if height < 140 {
    print("you might fly in the air")
  } else {
    print("enjoy")
  }
}

// design error
enum HeightError: Error {
  case maxHeight
  case minHeight
}

// design throwable function
func checkHeightError(height: Int) throws {
  if height > 200 {
    throw HeightError.maxHeight
  } else if height < 140 {
    throw HeightError.minHeight
  } else {
    print("enjoy your ride")
  }
}

// call and handle error
do {
  try checkHeightError(height: 240)
} catch HeightError.maxHeight {
  print("get out of here")
} catch HeightError.minHeight {
  print("too short to ride")
}

// error handling with object initialization
enum NameError: Error {
  case noName
}

// design throwable class
class Course {
  var name: String
  
  init(name: String) throws {
    if name == "" {
      throw NameError.noName
    } else {
      self.name = name
      print("you've created an object")
    }
  }
}

// initialize and handle error
do {
  let course = try Course(name: "")
} catch NameError.noName {
  print("error: please make sure enter name")
}

// try?
let course = try? Course(name: "alf the dev") // returns Course?
let newCourse = try? Course(name: "") // nil

// try!
let myNewCourse = try! Course(name: "alf rch")  // ?
let myNewDopeCourse = try! Course(name: "") // error
