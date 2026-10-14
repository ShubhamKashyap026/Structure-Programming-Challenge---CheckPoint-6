import Cocoa

var greeting = "Hello, playground"

// Structure programming challenge

struct Car {
    let model: String
    let numberOfSeats: String
    private(set) var currentGear: Int = 0 // to allow to read but not edit the property
    
    
    init(model: String, numberOfSeats: String) {
        self.model = model
        self.numberOfSeats = numberOfSeats
    }
    
    mutating func changingGear(change: String) {
        let userinput = change.lowercased()
        
        if currentGear <= 0 && userinput == "down" {
            print("Gear out of index. Kindly increase the gear")
            return
        } else if currentGear >= 10 && userinput == "up" {
            print("Gear out of index. Kindly decrease the gear")
            return
        }
        
        switch userinput {
        case "up":
            print("Gear up")
            currentGear += 1
            print("Current Gear is: \(currentGear)")

        case "down":
            print("Gear down")
            currentGear -= 1
            print("Current Gear is: \(currentGear)")

        default:
            print("Incorrect input")
        }
    }
}

var car1 = Car(model: "Alto", numberOfSeats: "5")
print(car1.currentGear)
car1.changingGear(change: "up")
car1.changingGear(change: "down")
car1.changingGear(change: "up")
car1.changingGear(change: "up")
car1.changingGear(change: "up")
car1.changingGear(change: "up")
car1.changingGear(change: "up")
car1.changingGear(change: "up")
car1.changingGear(change: "up")
car1.changingGear(change: "up")
car1.changingGear(change: "up")
car1.changingGear(change: "up")
car1.changingGear(change: "up")


print(car1.model)
print(car1.numberOfSeats)
