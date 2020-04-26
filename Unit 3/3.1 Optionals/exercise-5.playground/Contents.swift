import UIKit

// Exercise - Failable Initializers

struct Computer {
    var ram: Int
    var yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        if(ram > 0 && yearManufactured > 1970 && yearManufactured < 2017) {
            self.ram = ram
            self.yearManufactured = yearManufactured
        } else {
            return nil
        }
    }
}

var comp1: Computer? = Computer(ram: 512,yearManufactured: 2003)
var comp2: Computer? = Computer(ram: 0,yearManufactured: 2006)

if let uwrappedRam = comp1?.ram {
    print(uwrappedRam)
}

if let uwrappedRam = comp2?.ram {
    print(uwrappedRam)
}

if let uwrappedYearManufactured = comp1?.yearManufactured {
    print(uwrappedYearManufactured)
}

if let uwrappedYearManufactured = comp2?.yearManufactured {
    print(uwrappedYearManufactured)
}
