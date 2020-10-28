import Foundation

extension String {
  func getName() -> String {
    if let range = self.range(of: "@") {
      let name = self[self.startIndex..<range.lowerBound]
      return String(name)
    }
    return "unknown"
  }
}

var email = "blablabal@gmail.com"

print(email.getName())
