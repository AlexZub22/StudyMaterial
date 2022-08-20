import Cocoa
protocol Storage {
    associatedtype Item
    mutating func store(item: Item)
    mutating func retrieve(index: Int) -> Item?
}
protocol Ride {
    var title: String {get}
    var wheels: Int {get}
    func isGo()
    
}
struct Car: Storage, Ride {
    typealias Item = Car
    
    
    let title: String
    
    let wheels: Int
    
    var garage = [Car]()
    mutating func store(item: Car) {
        guard garageForCarsAndMotos.count != 2 else {
            print("Больше машин в этот гараж не поместится")
            return
        }
        garage.append(item)
    }
    
    mutating func retrieve(index: Int) -> Item? {
        if index < garage.count && index >= 0 {
            let car = garage[index]
            return car
        } else {
            return nil
        }
    }
   
    func isGo() {
        print("Машина \(title) едет по дороге на \(wheels) колесах.")
    }
    
}
struct Moto: Storage, Ride {
    typealias Item = Moto
    let title: String
    let wheels: Int
    var garage = [Moto]()

    mutating func store(item: Moto) {
        guard garageForCarsAndMotos.count != 3 else {
            print("Больше мотоциклов в этот гараж не поместится")
            return
        }
        garage.append(item)
        }
        
    mutating func retrieve(index: Int) -> Item? {
        if index < garage.count && index >= 0 {
            let car = garage[index]
            return car
        } else {
            return nil
        }
        }
        
    func isGo() {
        print("Мотоцикл \(title) едет по дороге на \(wheels) колесах.")
    }
}

struct Planet: Storage {
    typealias Item = Planet
    let title: String
    let radius: Int
    var universe = [Planet]()
    mutating func store(item: Planet) {
        universe.append(item)
    }
    
    mutating func retrieve(index: Int) -> Item? {
        if index < universe.count && index >= 0 {
            let car = universe[index]
            return car
        } else {
            return nil
        }
    }
    func isBe() {
        print("Планета \(title) радиус которой \(radius) существует во Вселенной.")
    }
}

let lada = Car(title: "Vesta", wheels: 4)
let yamaha = Moto(title: "Yamaha R1", wheels: 2)
let hundai = Car(title: "Hundai", wheels: 4)
let rolls = Car(title: "Rolls Royce", wheels: 4)
let honda = Moto(title: "Honda Gold Wing", wheels: 2)
let mars = Planet(title: "Mars", radius: 14555)
let earth = Planet(title: "Earth", radius: 115434)
var harley = Moto(title: "Harley Davidson", wheels: 2)
var objects: [Any]  = [lada, yamaha, hundai, rolls, honda, mars, earth]
var garageForCarsAndMotos = Array<Ride>()

func storeInGarage(object: Ride) {
   var sumOfWheels = 0
    for ride in garageForCarsAndMotos {
        sumOfWheels += ride.wheels
    }
    guard sumOfWheels < 8 && garageForCarsAndMotos.count < 3 else {
        print("гараж полон!")
        return
    }
    if var car = object as? Car {
        car.store(item: car)
        garageForCarsAndMotos.append(car)
    } else if var mot = object as? Moto {
        mot.store(item: mot)
        garageForCarsAndMotos.append(mot)
    }
   
}

storeInGarage(object: hundai)
storeInGarage(object: lada)
garageForCarsAndMotos
storeInGarage(object: hundai)
garageForCarsAndMotos
