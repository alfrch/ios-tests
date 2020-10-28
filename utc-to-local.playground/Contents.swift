import Foundation

extension String {
  func UTCToLocal(fromFormat: String, toFormat: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = fromFormat
    dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
    
    guard let date = dateFormatter.date(from: self) else { return "" }
    dateFormatter.timeZone = TimeZone.current
    dateFormatter.dateFormat = toFormat
    
    return dateFormatter.string(from: date)
  }
}

let date = "2020-07-17 07:20:04".UTCToLocal(fromFormat: "yyyy-MM-dd HH:mm:ss", toFormat: "MMMM dd, yyyy HH:mm")
print(date)
