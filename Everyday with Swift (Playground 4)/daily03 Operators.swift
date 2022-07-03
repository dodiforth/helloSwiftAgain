import Foundation

let heartRate1 = 60
let heartRate2 = 80
let heartRate3 = 100

let addedHR = heartRate1 + heartRate2 + heartRate3
let averageHR = addedHR / 3

print(averageHR)

let heartRate1D : Double = 60
let heartRate2D : Double = 80
let heartRate3D : Double = 100

let addedHRD = heartRate1D + heartRate2D + heartRate3D
let averageHRD = addedHRD / 3

print(averageHRD)

var steps : Double = 3_467
let goal : Double = 10_000
let percentOfGoal = 100 * steps / goal

print("\(percentOfGoal)%")