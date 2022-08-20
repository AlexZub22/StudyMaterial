import Cocoa
import Darwin


enum Vegitables: CaseIterable { //CaseIterable добавляет allCases возвращает массив кейсов
    case cucumber
    case onion
    case tomato
    case salad
}
let cucuruzo = Vegitables.cucumber
cucuruzo
let seniorPomidor: Vegitables = .tomato
for veg in Vegitables.allCases {
    print(veg)
}
enum Models {
    case Audi, BMW, Mercedes, Lada
}
let supercar: Models = .Lada
switch supercar {
case .Lada:
    print("Лада седан баклажан")
case .BMW:
    print("Вай какая ласточка!")
case .Audi:
    print("Я тэпэрь властелин овец, или колец...")
case .Mercedes:
    print("Я купиль бэлэй мерседес, эх видел бы мой дядя Ваганес...")
}


enum DayTime: CaseIterable {
    case night, morning, afternoon, evening
}
var currentTime = DayTime.evening
currentTime = .night
switch currentTime {
case .night:
    print("Ночь")
case .morning:
    print("Утро")
case .afternoon:
    print("День")
case .evening:
    print("Вечер")
}
var dayTimes = DayTime.allCases
func nextTime(time: DayTime) -> DayTime {
    var index = 0
    for (i, t) in DayTime.allCases.enumerated() {
        if t == time {
            index = i
        }
    }
    if index == DayTime.allCases.count - 1 {
        return DayTime.allCases[0]
    } else {
        return DayTime.allCases[index + 1]
    }
}
nextTime(time: .night)
nextTime(time: .evening)
enum Direction: String {
    case left = "налево"
    case right = "направо"
    case back = "назад"
}

enum Action {
    case walk(meters: Int)
    case run(meters: Int, speed: Int)
    case stop
    case turn(direction: Direction)
    
    func description() {
        switch self {
        case .walk(meters: let meters):
            print("Идти \(meters) метров.")
        case .run(meters: let meters, speed: let speed):
            print("Бежать \(meters) со скоростью \(speed) км/ч.")
        case .stop:
            print("Остановится")
        case .turn(direction: let direction):
            print("Повернуть \(direction.rawValue)")
        }
    }
    
    mutating func change(action: Action) {
        self = action
        description()
    }
}
var action = Action.walk(meters: 100)
action.description()
action.change(action: .run(meters: 400, speed: 15))

enum Season: Int {
    case winter = 1, spring, summer = 6, autumn
    var label: String {
        switch self {
        case .winter:
            return "Зима"
        case .spring:
            return "Весна"
        case .summer:
            return "Лето"
        case .autumn:
            return "Осень"
        }
    }
    init?(value: String) {
        switch value {
        case "Зима": self = .winter
        case "Весна": self = .spring
        case "Лето": self = .summer
        case "Осень": self = .autumn
        default: return nil
        }
    }
}
Season.autumn.rawValue
Season.summer.label
let season = Season(value: "Зима")

enum Year: String {
    case god = "год"
    case goda = "года"
    case lett = "лет"
    init(count: Int) {
        let array = [2, 3, 4]
        switch count {
        case let years where years % 10 == 1 && years / 10 % 10 != 1: self = .god
        case let years where array.contains(years % 10) && 10 % 10 != 1: self = .goda
        default: self = .lett
        }
    }
}
let age = 50
print("Мне \(age) \(Year(count: age).rawValue)")

//Жильё с комнатами
enum Home {
    case room(square: Int)
    case flat(rooms: Int, square: Int)
    case cottage(floors: Int, rooms: Int, square: Int, land: Int)
    }
let littleRoom = Home.room(square: 14)
let bigFlat = Home.flat(rooms: 4, square: 120)
let someCottage = Home.cottage(floors: 3, rooms: 6, square: 250, land: 14)
var base: [Home] = [littleRoom, bigFlat, someCottage]

class Estate {
    var base: [Home]
    init(object: [Home]) {
        self.base = object
    }
    
    func info(ind: Int) {
        guard ind <= base.count - 1 else  { print("Задан несуществующий индекс")
            return
        }
        let objec = base[ind]
        switch objec {
        case .room(square: let square):
            print("Комнта площадью \(square)")
        case .flat(rooms: let rooms, square: let square):
            print("Квартира с количеством комнат \(rooms) площадью \(square)")
        case .cottage(floors: let floors, rooms: let rooms, square: let square, land: let land):
            print("Коттедж. Количество этажей \(floors), количество комнат \(rooms), площадь \(square), земельный участок площадью \(land)")
        }
    }
}


let estateBase = Estate(object: base)
estateBase.info(ind: 3)



// климатический пояс
enum ClimateArea {
    case tundra, taiga, steppe, desert, tropics, ecvator
    var info: String {
        switch self {
        case .tundra:
        return "Тундра"
        case .taiga:
        return "Тайга"
        case .steppe:
        return "Степь"
        case .desert:
        return "Пустыня"
        case .tropics:
        return "Тропики"
        case .ecvator:
        return "Экватор"
        }
    }
}
class Animal {
    let title: String
    let areal: ClimateArea
    init(title: String, areal: ClimateArea) {
        self.title = title
        self.areal = areal
    }
}
func inf(animals: [Animal], climateArea: ClimateArea) -> [Animal] {
    var newArray: [Animal] = []
    for animal in animals {
        if animal.areal == climateArea {
            newArray.append(animal)
            print("\(animal.title) живет в \(animal.areal)")
        }
    }
    return newArray
}
let elephant = Animal(title: "Слон", areal: .ecvator)
let amurTiger = Animal(title: "Амурский тигр", areal: .taiga)
let wolf = Animal(title: "Волк", areal: .taiga)
let jiraffe = Animal(title: "Жираф", areal: .tropics)
let anaconda = Animal(title: "Анаконда", areal: .tropics)
let camel = Animal(title: "Верблюж", areal: .desert)
let animals = [elephant, amurTiger, wolf, jiraffe, anaconda, camel]
inf(animals: animals, climateArea: .tropics)


/*
enum GadgetType: String {
    case phone = "Смартфоны"
    case headphones = "Наушники"
    case copter = "Квадракоптеры"
    case watch = "Умные часы"
    case segway = "Самокаты"
}
struct Category {
    let title: String
    let discription: String
}
class DataBase {
    static var categories: [Category] = [Category(title: "Смартфоны", discription: "Телефоны известных брендов"), Category(title: "Наушники", discription: "Долбят нормально"), Category(title: "Умные часы", discription: "Явно умнее тебя"), Category(title: "Самокаты", discription: "Для лодырей")]
}

class Gadget {
    let title: String
    var price: Int
    let color: String
    var isOn = false
    let type: GadgetType
    
    init(title: String, price: Int, color: String, type: GadgetType) {
        self.title = title
        self.price = price
        self.color = color
        self.type = type
    }
    func onOff() {
        isOn.toggle()
    }
}
class Smartphone: Gadget {
    let diagonal: Double
    var number: Int?
    init(title: String, price: Int, color: String, diagonal: Double) {
        self.diagonal = diagonal
        super.init(title: title, price: price, color: color, type: .phone)
    }
    func insertSim(number: Int) {
        self.number = number
    }
    func call(number: Int) {
        guard let myNumber = self.number else {
            print("Вставьте симкарту!")
            return
        }
        print("Вызов на номер \(number) с симкарты \(myNumber)")
    }
}
class Copter: Gadget {
    let weight: Int
    var needRegistration: Bool { weight > 250
    }
    init(weight: Int, price: Int, color: String) {
        self.weight = weight
        super.init(title: "DJI", price: price, color: color, type: .copter)
    }
    func fly() {
        print("Коптер \(title) летает!")
    }
}

class WebShop: GadgetShopDelegate {
    
    private(set) var catalog: [Gadget] = []
    private var kassa: Int = 0
    func addGadget(_ gadget: Gadget) {
        self.catalog.append(gadget)
    }
    func sale(_ gadget: Gadget, amount: Int) -> Bool {
        guard gadget.price <= amount else {
            print("Денег недостаточно")
            return false
        }
        for (index, g) in catalog.enumerated() {
            if g.title == gadget.title && g.price == g.price {
                self.catalog.remove(at: index)
                kassa += gadget.price
                print("Спасибо за покупку!")
                return true
            }
        }
        print("Такого товара в магазине нет!")
        return false
    }
    func getKassa() -> Int { kassa }
}

class Person {
    let name: String
    var phone: Smartphone?
    var cash = 180000
    var things = [Gadget]()
    var gadgetShop: GadgetShopDelegate?
    
    init(name: String) {
        self.name = name
    }
    func buy(thing: Gadget) {
        guard let gadgetShop = gadgetShop else {
            print("Тебе никто ничего не продаст шизофреник!")
            return }
        guard  gadgetShop.sale(thing, amount: cash) else { return }
        cash -= thing.price
        if thing is Smartphone {
            self.phone = thing as? Smartphone
        } else {
            self.things.append(thing)
        }
    }
}

protocol GadgetShopDelegate {
    func sale(_ gadget: Gadget, amount: Int) -> Bool
}
let iPhone = Smartphone(title: "iPhone", price: 70000, color: "Space Gray", diagonal: 5.7)
let venik = Gadget(title: "Nimbus 2000", price: 90000, color: "Коричневый", type: .segway)
let mavicMini = Copter(weight: 249, price: 43500, color: "Белый")
let rubleSetb = WebShop()
rubleSetb.addGadget(iPhone)
rubleSetb.addGadget(venik)
rubleSetb.addGadget(mavicMini)
rubleSetb.catalog.count
rubleSetb.getKassa()
let maga = Person(name: "Мага")
maga.buy(thing: iPhone)
maga.gadgetShop = rubleSetb // появился делегат
maga.buy(thing: iPhone)
rubleSetb.catalog.count
rubleSetb.getKassa()
maga.cash
maga.phone?.title
maga.phone?.call(number: 965443322)
maga.phone?.insertSim(number: 9624126786)
maga.phone?.call(number: 965443322)
maga.buy(thing: venik)
maga.cash
maga.things.count
rubleSetb.catalog.count
rubleSetb.getKassa()
maga.buy(thing: mavicMini)

/// -----------------------------------------------
class Animal {
    let name: String
    init(name: String) {
        self.name = name
    }
}
protocol CanEat {
    func eat(animal: Animal) -> Bool
}
protocol CanBeFood {
    func becomeFood(for animal: Animal) -> Bool
}
class Cat: Animal, CanEat, CanBeFood {
    func eat(animal: Animal) -> Bool {
        if animal is Dog {
            print("\(animal.name) слишком большой!")
            return false
        } else {
            print("Я съел \(animal.name)")
            return true
        }
    }
    func becomeFood(for animal: Animal) -> Bool {
        if animal is Mouse {
            print("\(animal.name) не может меня съесть!")
            return false
        } else {
            print("Меня съел \(animal.name)!")
            return true
        }
    }
}
class Dog: Animal, CanEat {
    func eat(animal: Animal) -> Bool {
        print("Я съел \(animal.name)")
        return true
    }
}
class Mouse: Animal, CanBeFood {
    func becomeFood(for animal: Animal) -> Bool {
        print("Меня съел \(animal.name)!")
        return true
    }
}
let tom = Cat(name: "Том")
let jerry = Mouse(name: "Джери")
let spike = Dog(name: "Спайк")
jerry.becomeFood(for: spike)
tom.eat(animal: spike)
tom.becomeFood(for: jerry)
spike.eat(animal: tom)
spike.eat(animal: jerry)
*/
