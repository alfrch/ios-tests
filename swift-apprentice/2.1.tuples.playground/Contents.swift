import UIKit

// define a pair of 2D coordinates where each axis value is an integer
let coordinates: (Int, Int) = (2, 3)

// access the data inside a tuple
let x1 = coordinates.0
let y1 = coordinates.1

let coordinatesNamed = (x: 2, y: 3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let coordinates3D = (x: 2, y: 3, z: 1)
let (x3, y3, z3) = coordinates3D
// equivalent to top
//let x3 = coordinates3D.x
//let y3 = coordinates3D.y
//let z3 = coordinates3D.z

let (x4, y4, _) = coordinates3D

var weatherForecast = (day: 1, month: 11, year: 2020, averageTemperature: 91.0)

let (day, _, _, avgTemp) = weatherForecast

weatherForecast.averageTemperature = 100.0




