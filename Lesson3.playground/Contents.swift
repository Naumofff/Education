import UIKit

enum CarModel {
case GTR
case Regular
}



enum EngineCar: String {
    case start = "Автомобиль заведен"
    case stop = "Автомобиль заглушен"
}
struct Car {
    var ModelCar: CarModel
    var YearCar: Int
    var EngineStart: Bool {
        willSet {
            if (newValue == true) && (ModelCar == .GTR) {
                print("Машина поднялась") }
            else {
                print("Пневма опущена")
            }
        }
    }
        
        var Trunk: Double
        var WindowCar: Bool
        var TrunkVolume: Double {
            didSet {
                let freeTrunk = Trunk - TrunkVolume
                print("Багажник свободен на \(freeTrunk)")
            }
        }
        
    }


var car1 = Car(ModelCar: .GTR, YearCar: 2022, EngineStart: false, Trunk: 64, WindowCar: false, TrunkVolume: 0)
car1.TrunkVolume = 35
car1.EngineStart = true
car1.EngineStart = false
