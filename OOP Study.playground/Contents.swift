import Cocoa
import Foundation

class Driver {
    let name: String
    let exp: Int
    init(name: String, exp: Int) {
        self.name = name
        self.exp = exp
    }
}

class Car {
    let title: String
    let carClass: String
    let weight: Int
    var driver: Driver?
    var engine: Engine
    var isGoing = false
    
    class Engine {
        let power: Int
        let volume: Double
        init(power: Int, volume: Double) {
            self.volume = volume
            self.power = power
        }
        
    }
    init(title: String, carClass: String, weight: Int, volume: Double, power: Int) {
        self.title = title
        self.carClass = carClass
        self.weight = weight
        self.engine = Engine(power: power, volume: volume)
    }
    func start() {
        guard let driver = driver else {
            print("Куда поехала без водителя?")
            return
        }
        print("Поехали! \(driver.name) отвезет вас куда-нибудь!")
    }
    func stop() {
        if isGoing {
            print("Астанавитес!!!")
            isGoing = false
        } else {
            print("Дак и так стоим")
        }
    }
    func turnRight() {
        if isGoing {
            print("Повернуть налево")
        } else {
            print("Толку от этого действия немного")
        }
        
    }
}


let engine = Car.Engine(power: 250, volume: 3.0)
let chel = Driver(name: "Сергеич", exp: 8)
let kiaRio = Car(title: "KIA Rio", carClass: "B", weight: 1150, volume: 1.6, power: 108)
kiaRio.engine
kiaRio.driver = chel
kiaRio.start()


// кофе машина
class CoffeMachine {
    var cupsCount: Int = 0
    
    func makeCofee() {
        let countBeforeService = 3
        if self.cupsCount < countBeforeService {
            print("Кофе готов")
            self.cupsCount += 1
        } else if self.cupsCount == countBeforeService {
            print("Кофе готов. Необходимо обслуживание кофе-машины")
            self.cupsCount += 1
        } else {
            print("Необходимо обслуживание кофе-машины")
        }
    }
    func sevice() {
        self.cupsCount = 0
        print("Кофе-машина обслужена!")
    }
}
let machine = CoffeMachine()

// параллелипипед
class Parallelepiped {
    var lenght: Int
    var width: Int
    var height: Int
    init(lenght: Int, width: Int, height: Int) {
        self.height = height
        self.lenght = lenght
        self.width = width
    }
    func volume() {
        let volume = lenght * width * height
        print("Объем параллелепипеда равен \(volume) кубических сантиметра")
    }
    func summSquare() {
        let sumSquare = 2 * (lenght * width) + 2 * (lenght * height) + 2 * (width * height)
        print("Суммарная площадь параллелепипеда равна \(sumSquare) квадратных сантиметров")
    }
}
let figure = Parallelepiped(lenght: 120, width: 60, height: 50)
figure.summSquare()
figure.volume()
// Товар
class Product {
    let title: String
    var price: Int
    var rate: Double
    init(title: String, price: Int, rate: Double) {
        self.title = title
        self.price = price
        self.rate = rate
    }
}
var products: [Product]
let lgTV = Product(title: "Телевизор LG", price: 40000, rate: 4.8)
let smTV = Product(title: "Телевизор Samsung", price: 47000, rate: 4.9)
let xiaomiTV = Product(title: "Телевизор Xiaomi", price: 34000, rate: 4.5)
let sonyTV = Product(title: "Телевизор Sony", price: 67000, rate: 5.0)
let iPhone = Product(title: "iPhone 13 pro MAX", price: 130000, rate: 4.9)
let galaxy = Product(title: "Samsung Galaxy S20+", price: 110000, rate: 4.8)
let xiaomi = Product(title: "Хiaomi лучший за свои деньги", price: 30000, rate: 5.0)
products = [lgTV, smTV, xiaomiTV, sonyTV]
let phones = [iPhone, galaxy, xiaomi]
class Category {
    let name: String
    let prodArray: [Product]
    init(name: String, prods: [Product]){
        self.name = name
        self.prodArray = prods
    }
}
let tvs = Category(name: "Телевизоры", prods: products)
var smartphones = Category(name: "Смартфоны", prods: phones)
class Cart {
    var prodBuy: [Product]?
    init(prodBuy: [Product]) {
        self.prodBuy = prodBuy
    }
}
class User {
    let login: String
    let pass: Int
    var myCart: Cart? = nil
    init(login: String, pass: Int) {
        self.login = login
        self.pass = pass
    }
    func iphoneBuy () {
        for phone in phones {
            if phone.title == "iPhone 13 pro MAX" {
              myCart = Cart.init(prodBuy: [phone])
                print("Товар \(phone.title) добавлен в мою корзину")
                break
            } else {
                print("Нужного товара нет в списке")
            }
        }
    }
}
let vasya = User(login: "VasyaBigBoss", pass: 1234)
vasya.iphoneBuy()
vasya.myCart




