import UIKit

struct Cat {
  func saySomething() -> String {
    return "meow"
  }
}

let kocheng = Cat()
kocheng.saySomething()

// introducing subscripts
struct Weekdays {
  var days = ["monday", "tuesday", "wednesday", "thursday", "friday"]
  
  subscript(index: Int) -> String {
    return days[index]
  }
}

let days = Weekdays()
days[0]
days[1]

// dictionary
var info = ["height": 183, "body fat": 12.5, "weight": 76]
let height = info["height"] // height is an optional string

// artificial dictionary
struct HealthInfo {
  var info = ["height": 183, "body fat": 12.5, "weight": 76]
  
  subscript(key: String) -> Double {
    guard let info = info[key] else { return 0 }
    return info
  }
}

let jack = HealthInfo()
jack["height"]
jack["body fat"]
jack["1234234"]
