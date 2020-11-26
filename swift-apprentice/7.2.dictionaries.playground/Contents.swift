import UIKit

var namesAndScores = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]
print(namesAndScores)

namesAndScores = [:]

var pairs: [String: Int] = [:]
pairs.reserveCapacity(20)

namesAndScores = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]

print(namesAndScores["Anna"])

namesAndScores["Greg"]

namesAndScores.isEmpty
namesAndScores.count

var bobData = [
  "name": "Bob",
  "profession": "Card Player",
  "country": "USA"
]

bobData.updateValue("CA", forKey: "state")
bobData["city"] = "San Fransisco"

bobData.updateValue("Bobby", forKey: "name")
bobData["profession"] = "Mailman"

bobData.removeValue(forKey: "state")
bobData["city"] = nil

for (player, score) in namesAndScores {
  print("\(player) - \(score)")
}

for player in namesAndScores.keys {
  print("\(player), ", terminator: "")
}
print("")

func test() {
    
}
