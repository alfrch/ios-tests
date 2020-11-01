import Foundation

// design failable init
class Blog {
  let name: String
  
  init?(name: String) {
    if name.isEmpty {
      // handle error
      return nil
    }
    self.name = name
  }
}

let blog = Blog(name: "") // nil

if let myBlog = blog {
  print(myBlog.name)
}
