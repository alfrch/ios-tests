import Foundation

// design handler block
let handlerBlock: (Bool) -> () = {
  if $0 {
    print("download completed")
  }
}

let myHandlerBlock: (Bool) -> () = { (isSuccess: Bool) in
  if isSuccess {
    print("download has been finished")
  }
}

myHandlerBlock(true) // download has been finished

// design function
func downloadAnImage(completionBlock: (Bool) -> Void) {
  for _ in 1...10 {
    print("downloading")
  }
  
  completionBlock(true)
}

downloadAnImage(completionBlock: myHandlerBlock)

// pass closure directly
downloadAnImage { isSuccess in
  if isSuccess {
    print("done")
  }
}
