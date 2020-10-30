import Foundation

// design class
class HumanClass {
  var name: String
  init(name: String) {
    self.name = name
  }
}

// create instance
var humanClassObject = HumanClass(name: "alf")
humanClassObject.name

// create another instance that "copies" humanClassObject
let newHumanClassObject = humanClassObject  // share

// change the name property of newHumanClassObject to "jack"
humanClassObject.name = "alrch"
newHumanClassObject.name

// design struct
struct HumanStruct {
  var name: String
  init(name: String) {
    self.name = name
  }
}

// create instance
var structObject = HumanStruct(name: "alf")
let newStructObject = structObject  // copy-paste

// change the name property of structObject to "alfrch"
structObject.name = "alfrch"
newStructObject.name

// mutability in classes
class AlfClass {
  var name = "alf"
}

// create instance
let alfClass = AlfClass()
alfClass.name = "alfrch"

let newAlfClass = alfClass
newAlfClass.name = "alf the dev"
alfClass.name

// no mutability in structs
struct AlfStruct {
  var name = "alf"
}

let alfStruct = AlfStruct()
alfStruct.name

// error: immutable
//alfStruct.name = "alf the dev"
