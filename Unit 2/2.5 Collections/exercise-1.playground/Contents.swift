import UIKit

// Exercise - Arrays

var registrationList: [String] = []

registrationList.append("Sara")
print(registrationList)

registrationList += ["Alex", "Mark", "Michael", "James"]
print(registrationList)

registrationList.insert("Charlie", at: 1)
print(registrationList)

registrationList[5] = "Rebecca"
print(registrationList)

var deletedItem = registrationList.removeLast()
print(deletedItem)
