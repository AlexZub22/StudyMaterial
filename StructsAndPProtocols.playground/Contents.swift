import Cocoa
import Darwin

//Структуры
struct Human {
    let name: String
    var age: Int
}

class Person {
    let name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
var vasya = Human(name: "Вася", age: 34)
let egor = Human(name: "Егор", age: 28)
var elena = Person(name: "Елена", age: 30)
let olga = Person(name: "Ольга", age: 29)
elena.age = 33
vasya.age = 36

elena = olga
vasya = egor

vasya.age
vasya.name

egor.name
egor.age

vasya.age = 40
egor.age
vasya.age

elena.age = 39
olga.age
elena.age

// === - оператор идентичности (для классов)
elena === olga
let anotherOlga = Person(name: "Ольга", age: 39)
olga === anotherOlga
olga.name == anotherOlga.name

//Структура "Запись в заказе".

struct OrderPosition {
    let title: String
    let price: Int
    var count: Int
    var cost: Int { price * count }
}
class Officiant {
    var order = [OrderPosition]()
    private var orderCost: Int {
        var sum = 0
        for pos in order {
            sum += pos.cost
        }
        return sum
    }
    func changePos(_ posTitle: String, count: Int) {
        guard let index = findIndex(of: posTitle) else {
            print("Вы не заказывали \(posTitle)")
            return
        }
        order[index].count = count
    }
        
    func removePosition(_ posTitle: String) {
        guard let index = findIndex(of: posTitle) else {
            print("Вы и не заказывали \(posTitle)")
            return
        }
            order.remove(at: index)
        
    }
    func addPosition(_ pos: OrderPosition) {
        self.order.append(pos)
    }
    private func findIndex(of positionTitle: String) -> Int? {
        for (index, position) in order.enumerated() {
            if positionTitle == position.title {
               return index
            }

        }
return nil
    }
    func orderDescription() {
        print("Вы заказали:")
        for pos in order {
            print("\(pos.title) - \(pos.count) шт.")
        }
        print("Все верно?")
        }
    func check() {
        print("С вас \(self.orderCost)")
    }
    func getPayment(cash: Int) -> Bool {
        guard cash >= orderCost else {
            print("Денег недостаточно! Идите мыть посуду!")
            return false
        }
        if cash == orderCost {
            print("Спасибо, что без сдачи. Где мои чаевые?")
            return true
        } else {
            print("Приходите еще. Ваша сдача \(cash - orderCost)")
            return true
        }
    }
    func getPayment(byCardWith pin: Int) {
        if pin == 4587 {
            print("Платеж прошел успешно")
    } else {
        print("Неверный пин-кол")
    }
}
}
let arkadiy = Officiant()
let filodelfia = OrderPosition(title: "Филадельфия", price: 800, count: 3)
let shaurma = OrderPosition(title: "Шаурма", price: 130, count: 2)
let beer = OrderPosition(title: "Пиво", price: 89, count: 7)

arkadiy.addPosition(filodelfia)
arkadiy.addPosition(beer)
arkadiy.addPosition(shaurma)
arkadiy.orderDescription()
arkadiy.check()
arkadiy.removePosition("Филадельфия")
arkadiy.check()
arkadiy.changePos("Шаурма", count: 1)
arkadiy.orderDescription()

// WORKER

struct Worker {
    let name: String
    var pos: String
    let year: Int
}

var table: [Worker] = [
Worker(name: "Петров В.И.", pos: "Чтец", year: 2019),
Worker(name: "Калашников М.И.", pos: "Жнец", year: 2002),
Worker(name: "Утин В.В.", pos: "На дуде игрец", year: 1999),
Worker(name: "Пушкин А.С.", pos: "Писатель", year: 1987),
Worker(name: "Лермонтов М.Ю.", pos: "Разработчик", year: 2009)]
table.sort { first, last in
    first.name < last.name
}
print(table)
func workersWhoWorksMore(than years: Int) {
    for worker in table {
        let exp = 2022 - worker.year
        if exp > years {
            print(worker.name)
        }
    }
}
workersWhoWorksMore(than: 20)


//Описать структуру train

struct Train {
    var dest: String
    let number: Int
    var time: String
}
let list = [
    Train(dest: "Сочи", number: 234, time: "23:45"),
    Train(dest: "Пермь", number: 435, time: "12:24"),
    Train(dest: "Тверь", number: 789, time: "15:00"),
    Train(dest: "Калуга", number: 999, time: "03:20"),
    Train(dest: "Троицк", number: 666, time: "13:13")
]
func trainDescription(number: Int) {
    for train in list {
        if train.number == number {
            print("Поезд до города \(train.dest). Время отправления \(train.time).")
            return
        }
    }
    print("Такого поезда в расписании нет!")
}
func info(dest: String) {
    for train in list {
        if train.dest == dest {
            print("Поезд номер \(train.number) до города \(dest). Время отправления \(train.time).")
            return
        }
    }
    print("Такого направления в расписании нет!")
}


func info(time: String) {
    for train in list {
        if train.time == time {
            print("Поезд номер \(train.number) до города \(train.dest). Время отправления \(time).")
            return
        }
    }
    print("Такого времени отправления в расписании нет!")
}

