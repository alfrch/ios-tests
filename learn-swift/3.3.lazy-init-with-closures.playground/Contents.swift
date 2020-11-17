import UIKit

// unconventional way
let boxView: UIView = {
  let view = UIView()
  view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
  view.backgroundColor = .green
  return view
}()

// create ui components
let buttonFrame = CGRect(x: 0, y: 0, width: 100, height: 100)

// view controller one
let button1 = UIButton(frame: buttonFrame)
button1.backgroundColor = .red
button1.setTitle("vc1", for: .normal)
button1.setTitleColor(.white, for: .normal)

// view controller two
let button2 = UIButton(frame: buttonFrame)
button2.backgroundColor = .yellow
button2.setTitle("vc2", for: .normal)
button2.setTitleColor(.black, for: .normal)

// create button with function
func createButton(title: String) -> UIButton {
  let button = UIButton(frame: buttonFrame)
  button.backgroundColor = .black
  button.setTitle(title, for: .normal)
  button.setTitleColor(.yellow, for: .normal)
  return button
}

createButton(title: "henlo")

// introducing unconventional way
// create object with closure
struct Human {
  init() {
    print("born 1945")
  }
}

let createJack = { () -> Human in
  let human = Human()
  return human
}

let jackInstance = createJack()

// initialize in single line
let jackie = { () -> Human in
  let human = Human()
  return human
}()

// create uiview unconventionally
let newView = { () -> UIView in
  let view = UIView(frame: buttonFrame)
  view.backgroundColor = .yellow
  return view
}()

let newNewView: UIView = {
  let view = UIView(frame: buttonFrame)
  view.backgroundColor = .gray
  return view
}()

// introducing lazy var
class IntenseMathProblem {
  lazy var complexNumber: Int = {
    1 * 1
  }()
}

let problem = IntenseMathProblem() // no value for complexNumber
problem.complexNumber // now, complexNumber is 1
