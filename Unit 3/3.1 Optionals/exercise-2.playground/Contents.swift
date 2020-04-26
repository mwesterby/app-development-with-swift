import UIKit

// App Exercise - Finding a Heart Rate

var heartRate: Int? = nil
print(heartRate)

heartRate = 74
print(heartRate)

let oldHR1 = 80
let oldHR2 = 76
let oldHR3 = 79
let oldHR4 = 70

var heartRateSum: Int = oldHR1 + oldHR2 + oldHR3 + oldHR4
var hrAverage: Int

if let currentHeartRate = heartRate {
    heartRateSum += currentHeartRate
    hrAverage = heartRateSum / 5
} else {
    hrAverage = heartRateSum / 4
}

print(hrAverage)
