import Cocoa

// Паттерны проектирования (Design patterns) - концептуальные решения какой то задачи
//Порождающие паттерны - отвечают за создание объектов
//Фабрика

enum ClothesType {
    case head, shoes
}

protocol Clothes {
    var title: String { get }
    var type: ClothesType { get }
    var color: String { get }
    
    func putOn()
}

class Shoes: Clothes {
    var title: String = "Кроссовки"
    var type: ClothesType = .shoes
    var color: String = "Белые"
    func putOn() {
        print("Надеть \(color) \(title)")
    }
}
class Hat: Clothes {
    var title: String = "Шляпа"
    var type: ClothesType = .head
    var color: String = "Черная"
    
    func putOn() {
        print("Надета \(color) \(title)")
    }
}
class ClothesFactory { //синглтон
    static let shared = ClothesFactory()
    private init() { }
    
    func putOnClothes(type: ClothesType) -> Clothes {
        let clothes: Clothes
        switch type {
        case .head:
            clothes = Hat()
        case .shoes:
            clothes = Shoes()
        }
        return clothes
    }
}

let hat = ClothesFactory.shared.putOnClothes(type: .head)
let shoes = ClothesFactory.shared.putOnClothes(type: .shoes)

let clothes = [hat, shoes]
for cl in clothes {
    cl.putOn()
}


//Builder - Строитель
class Car {
    var title: String?
    var type: String?
    var power: Int?
    var lifting: Int?
    var color: String?
}

protocol Builder {
    func reset()
    func setTitle()
    func setType()
    func setPower()
    func setLifting()
    func setColor(color: String)
    func getResult() -> Car
}

class AudiBuilder: Builder {
    var car = Car()
    func reset() {
        self.car = Car()
    }
    
    func setTitle() {
        self.car.title = "Audi"
    }
    
    func setType() {
        self.car.type = "Легковая"
    }
    
    func setPower() {
        self.car.power = 230
    }
    
    func setLifting() {
        self.car.lifting = 500
    }
    
    func setColor(color: String) {
        self.car.color = color
    }
    
    func getResult() -> Car {
        return self.car
    }
}

class Director {
    private var builder: Builder
    init(builder: Builder) {
        self.builder = builder
    }
    func setBuilder(builder: Builder) {
        self.builder = builder
    }
    func createCar(color: String) -> Car {
        builder.reset()
        builder.setTitle()
        builder.setPower()
        builder.setType()
        builder.setColor(color: color)
        builder.setLifting()
        return builder.getResult()
    }
    
}
let director  = Director(builder: AudiBuilder())
let audi = director.createCar(color: "Синий")
audi.color
audi.title
//Поведенческие паттерны - поведение объектов
//Delegate (Делегат)
//1 - Делегатор - тот, кто делегирует задачу
//2 - Тип делегата - протокол, которому должны соответствовать все делегаты
//3 - Делегат - тот, кто исполняет задачу
protocol CoffeMakerDelegate {
    func makeCoffe()
}
class Barista: CoffeMakerDelegate {
    let price = 170
    func makeCoffe() {
        print("Ваш кофе готов! С Вас \(price) рублей")
    }
}
class Vending: CoffeMakerDelegate {
    func makeCoffe() {
        print("Заберите напиток из автомата")
    }
}
class Secretarsha: CoffeMakerDelegate {
    func makeCoffe() {
        print("Вот Ваш кофе, босс!")
    }
    
}

class Client {
    var coffeeDelegate: CoffeMakerDelegate?
    func orderCoffee() {
        if let coffeeDelegate = coffeeDelegate {
            coffeeDelegate.makeCoffe()
        } else {
            print("Кофе готовить некому, шизофреник!")
        }
    }
}
let vending = Vending()
let boriska = Barista()
let lusya = Secretarsha()
let antoshka = Client()
antoshka.orderCoffee()
antoshka.coffeeDelegate = boriska
antoshka.orderCoffee()
antoshka.coffeeDelegate = nil
antoshka.orderCoffee()
antoshka.coffeeDelegate = vending
antoshka.orderCoffee()
antoshka.coffeeDelegate = lusya
antoshka.orderCoffee()
protocol CartType {
    func add(product: (String, Int))
}

class Catalog {
    var phone = ("iPhone", 69000)
    var airPods = ("AirPods", 27000)
    var cart: CartType?
    func addProduct(product: (String, Int)) {
        guard let cart = cart else {
            return
        }
        cart.add(product: product)
    }
}

class Cart: CartType {
    var products: [(String, Int)] = []
    var cost: Int {
        var sum = 0
        for product in products {
            sum += product.1
        }
        return sum
    }
    func add(product: (String, Int)) {
        products.append(product)
    }
}
let cart = Cart()
let catalog = Catalog()
catalog.cart = cart
catalog.addProduct(product: catalog.airPods)
catalog.addProduct(product: catalog.phone)
cart.cost
//Observer (Наблюдатель) реактивное программирование
//1 - Тип Субъекта
//2 - Тип наблюдателя
//3 - Субъект
//4 - Наблюдатели

protocol PropertyObserver {
    var name: String { get }
    func didGet(task: String)
}
protocol Subject {
    func add(observer: PropertyObserver)
    func remove(observer: PropertyObserver)
    func notification(task: String)
}
class Prorab: Subject {
    var task = "" {
        didSet {
            notification(task: task)
        }
    }
    var observers = [PropertyObserver]()
    func add(observer: PropertyObserver) {
        observers.append(observer)
    }
    
    func remove(observer: PropertyObserver) {
        for (index, obs) in observers.enumerated() {
            if observer.name == obs.name {
                self.observers.remove(at: index)
                break
            }
        }
    }
    
    func notification(task: String) {
        for observer in observers {
            observer.didGet(task: task)
        }
    }
}
class Workermana: PropertyObserver {
    var name: String
    init(name: String) {
        self.name = name
    }
    func didGet(task: String) {
        print("Меня зовут \(name). Делаю задачу \(task)")
    }
}
class Directornama: PropertyObserver {
    var name: String
    var journal = [String]()
    init(name: String) {
        self.name = name
    }
    func didGet(task: String) {
        self.journal.append(task)
        print("Всего задач: \(journal.count)")
    }
}
let petrovich = Prorab()
let mihalych = Directornama(name: "Михалыч")
let ravshan = Workermana(name: "Равшан")
let dzumshut = Workermana(name: "Джумшут")
petrovich.add(observer: mihalych)
petrovich.add(observer: ravshan)
petrovich.add(observer: dzumshut)
petrovich.task = "Разукрасить телевизор"
petrovich.task = "Сломать окно"
petrovich.task = "Замесить бензин"
for task in mihalych.journal {
    print(task)
}
petrovich.remove(observer: dzumshut)
petrovich.task = "Починить магнитофон"

//Структурные паттерны - структура взаимосвязей внутри проекта
