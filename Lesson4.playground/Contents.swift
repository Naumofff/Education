import UIKit

enum engineStatus {
    case on, off
}
enum carWindow {
    case open, close
}
enum carDoor {
    case lock, unlock
}

class Nissan {
    var engine: engineStatus
    var color: UIColor
    var carWindow: carWindow
    var door: carDoor
    
    init(engine: engineStatus, carColor: UIColor, carWindow: carWindow, door: carDoor) {
        self.engine = engine
        self.color = carColor
        self.carWindow = carWindow
        self.door = door
    }
}
enum transmissionGTR {
    case all, back
}

class GTR: Nissan {
    
    var turboBoost: Bool
    var topSpeed: Int
    var transmission: transmissionGTR
    
    init(turboBoost: Bool, topSpeed: Int, transmission: transmissionGTR, engine: engineStatus, carColor: UIColor, carWindow: carWindow, door: carDoor) {
        self.turboBoost = turboBoost
        self.topSpeed = topSpeed
        self.transmission = transmission
       
        super.init(engine: engine, carColor: carColor, carWindow: carWindow, door: door)
    }
}

var car1 = Nissan(engine: .off, carColor: .gray, carWindow: .close, door: .unlock)
print(car1.color)

var car2 = GTR(turboBoost: true, topSpeed: 410, transmission: .all, engine: .on, carColor: .white, carWindow: .close, door: .lock)

print(car2.topSpeed)
