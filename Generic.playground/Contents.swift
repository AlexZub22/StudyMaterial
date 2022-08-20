import Cocoa
import Foundation

// ДЖенерики (обобщения)

func addInts(first: Int, second: Int) -> Int {
    return first + second
}
let result = addInts(first: 45, second: 55)
func addDouble(first: Double, second: Double) -> Double {
    return first + second
}
let result2 = addDouble(first: 55, second: 195.4)

func addAny<T: Numeric>(first: T, second: T) -> T {
   return second + first
}

let ress = addAny(first: 45, second: 99)
let ress2 = addAny(first: 15.55, second: 1.4444)
// Equatable - значения которые можно сравнивать (== !=)
// Comparable - значения которые можно сопоставлять (< > <= >= == !=)
// Numeric - Все числа
//CustomStringConvertible - значения, которые которые могут быть описаны в виде строки
//Identifiable - идентифицируемые значения

struct Car: CustomStringConvertible, Identifiable, Comparable, Equatable {
    var id: String = UUID().uuidString
    
    var description: String {
    "\(color) \(title). Мест: \(places)"
    }
    
    let title: String
    let color: String
    let places: Int
    
    static func < (lhs: Car, rhs: Car) -> Bool {
        lhs.title < rhs.title
    }
    static func  == (lhs: Car, rhs: Car) -> Bool {
        lhs.title == rhs.title && lhs.places == rhs.places
    }
}
let audi = Car(title: "Audi A4", color: "Белый", places: 5)
print(audi)
audi.id
let bmw = Car(title: "BMW", color: "Чёрный", places: 4)
audi < bmw
let audi2 = Car(title: "Audi A4", color: "Синий", places: 5)
audi == audi2

//Ассоциированые типы (Swift OПГ :) )
protocol Storage {
    associatedtype Item
    mutating func store(item: Item)
    mutating func retrieve(index: Int) -> Item?
}
struct Book {
    let title: String
    let author: String
}
class BookCase: Storage {
    typealias Item = Book
    var container = [Item]()
    func store(item: Book) {
        container.append(item)
    }
    
    func retrieve(index: Int) -> Book? {
        if index < container.count && index >= 0 {
            let book = container[index]
            return book
        } else {
            return nil
        }
    }
}
let mm = Book(title: "Мастер и Маргарита", author: "М. Булгаков")
let annaK = Book(title: "Анна Каренина", author: "Л. Толстой")
let bookCase = BookCase()
bookCase.store(item: mm)
bookCase.store(item: annaK)
bookCase.retrieve(index: 1)

class Trunk<Item>: Storage {
    var container = [Item]()
    func store(item: Item) {
        container.append(item)
    }
    
    func retrieve(index: Int) -> Item? {
        if index < container.count && index >= 0 {
            let book = container[index]
            return book
        } else {
            return nil
        }
    }
}

struct Clothes {
    let brend: String
    let size: String
    let title: String
}
let  clothesTrunk = Trunk<Clothes>()
let garage = Trunk<Car>()

// Машины, Мотиоциклы, Планеты
protocol Mehanizm {
    var title: String {get}
    var wheels: Int {get}
    func isGo()
    
}
struct Cars: Storage, Mehanizm {
    typealias Item = Cars
    
    
    let title: String
    
    let wheels: Int
    
    var garage = [Cars]()
    mutating func store(item: Cars) {
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
struct Motos: Storage, Mehanizm {
    typealias Item = Motos
    let title: String
    let wheels: Int
    var garage = [Motos]()

    mutating func store(item: Motos) {
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

struct Planets: Storage {
    typealias Item = Planets
    let title: String
    let radius: Int
    var universe = [Planets]()
    mutating func store(item: Planets) {
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

let lada = Cars(title: "Vesta", wheels: 4)
let yamaha = Motos(title: "Yamaha R1", wheels: 2)
let hundai = Cars(title: "Hundai", wheels: 4)
let rolls = Cars(title: "Rolls Royce", wheels: 4)
let honda = Motos(title: "Honda Gold Wing", wheels: 2)
let mars = Planets(title: "Mars", radius: 14555)
let earth = Planets(title: "Earth", radius: 115434)
var harley = Motos(title: "Harley Davidson", wheels: 2)
let objects: [Any] = [lada, yamaha, hundai, rolls, honda, mars, earth]
var garageForCarsAndMotos: [Any] = []

func storeInGarage(object: Mehanizm) {
    if var car = object as? Cars {
        car.store(item: car)
        garageForCarsAndMotos.append(car)
    } else if var mot = object as? Motos {
        mot.store(item: mot)
        garageForCarsAndMotos.append(mot)
    }
   
}

storeInGarage(object: yamaha)
storeInGarage(object: honda)
storeInGarage(object: harley)
garageForCarsAndMotos
storeInGarage(object: hundai)
garageForCarsAndMotos
