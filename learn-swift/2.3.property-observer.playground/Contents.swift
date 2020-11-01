import Foundation

// grade tracker
var grade: Int = 80 {
  willSet(newGrade) {
    print("about to change your grade to \(newGrade)")
  }
  didSet {
    print("your grade has been changed")
    print("you had \(oldValue) previously. now you have \(grade)")
  }
}

grade = 100

// step counter
var totalSteps: Int = 20 {
  willSet(newTotalSteps) {
    print("about to set totalSteps to \(newTotalSteps)")
  }
  didSet {
    if totalSteps > oldValue {
      print("added \(totalSteps - oldValue) steps")
    }
  }
}

totalSteps = 60

// application
var userLoginInfo: Bool = false {
  willSet(newValue) {
    print("the user has tried something")
  }
  didSet {
    if userLoginInfo {
      print("the user has switched from \(oldValue) to \(userLoginInfo)")
      // background color
      // animation
      // pop up
      // all kinds of stuff
    }
  }
}

userLoginInfo = true
