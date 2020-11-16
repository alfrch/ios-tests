import UIKit

// design class
class AccountManager {
  static let sharedInstance = AccountManager()
  
  var userInfo = (ID: "alfrch", Password: 1234567)
  
  // networking: communicating with server
  func network() {
    // do stuff
  }
  
  private init() {}
}

// access object
AccountManager.sharedInstance.userInfo // (ID "alfrch", Password 1234567)

// view controller one
AccountManager.sharedInstance.userInfo.ID // "alfrch"

// view controller two
AccountManager.sharedInstance.userInfo.ID = "blablabla"

// view controller three
AccountManager.sharedInstance.userInfo.ID // "blablabla"
