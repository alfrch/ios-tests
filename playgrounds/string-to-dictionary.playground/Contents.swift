import Foundation

var str = "{\"id\":\"MjIyMjIyMjIyMjI5\",\"timestamp\":1598240458000}"

func convertStringToDictionary(text: String) -> [String: AnyObject]? {
    if let data = text.data(using: .utf8) {
        do {
          let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: AnyObject]
            return json
        } catch {
            print("Something went wrong")
        }
    }
    return nil
}

//print(convertStringToDictionary(text: str)!)

let object = convertStringToDictionary(text: str)!
let timestamp = object["timestamp"] as! Int
let id = object["id"] as! String

print(timestamp)
print(id)
