import Cocoa

// cash
struct Cash {
    var ruble: Int
    var kopecks: Int
    
    mutating func add(ruble: Int, kopecks: Int) {
        let kops = ruble * 100 + kopecks
        let selfKops = self.ruble * 100 + self.kopecks
        let sum = kops + selfKops
        let resultRubles = sum / 100
        let resultKops = sum % 100
        self.ruble = resultRubles
        self.kopecks = resultKops
    }
   mutating func withdraw(ruble: Int, kopecks: Int) {
       let kops = ruble * 100 + kopecks
       let selfKops = self.ruble * 100 + self.kopecks
       let sum = kops - selfKops
       let resultRubles = sum / 100
       let resultKops = sum % 100
       self.ruble = resultRubles
       self.kopecks = resultKops
    }
    func getResult() {
        print("\(ruble) рублей. \(kopecks) копеек")
    }
}
var cash = Cash(ruble: 124, kopecks: 80)
cash.add(ruble: 320, kopecks: 18)
cash.getResult()
cash.add(ruble: 110, kopecks: 45)
cash.getResult()

//Задача про время
class Time {
    var hour: Int
    var min: Int
    var sec: Int
    
    var timeDescription: String {
        print("\(hour):\(min):\(sec)")
        return "\(hour):\(min):\(sec)"
    }
    
    init?(hour: Int = 0, min: Int = 0, sec: Int = 0) {
        guard hour < 24,
              min < 60,
              sec < 60 else { return nil }
        self.hour = hour
        self.min = min
        self.sec = sec
    }
    func addTime(hour: Int = 0, min: Int = 0, sec: Int = 0) {
        let addSeconds = hour * 3600 + min * 60 + sec
        let selfSeconds = self.hour * 3600 + self.min * 60 * self.sec
        let sum = addSeconds + selfSeconds
        let resHours = sum / 3600
        let resMin = sum % 3600 / 60
        let resSec = sum % 60
        self.sec = resSec
        self.hour = resHours
        self.min = resMin
    }
}
let zero = Time()
zero?.addTime(hour: 18, min: 150, sec: 44)
zero?.timeDescription
let time = Time(hour: 23, min: 7, sec: 9)
time?.timeDescription
// Extension расширения

extension Double {
    func square() -> Double { self * self }
    func cubeVolume() -> Double {self * square()}
    func cubeSquareFacets () -> Double { 6 * square()}
    func cubePerimeter() -> Double { 12 * self }
    func squarePerimeter() -> Double { 4 * self }
}
56.square()
78.2.square()
// - объем куба со стороной, раво Double,
// - площадь граней куба
// - периметр куба
// - периметр квадрата
class User {
    let login: String
    let password: String
    var balance: Int
    init(login: String = "", password: String = "", balance: Int = 0) {
    self.login = login
    self.password = password
    self.balance = 0
    }
}
extension User {
    func addCash(_ amount: Int) {
        self.balance += amount
    }
}
extension User {
    convenience init(login: String, password: String) {
        self.init(login: login, password: password, balance: 0)
    }
}

// Расширение для Int, которое вычислит информацию о том, простое число или нет. А также четое число или нет
extension Int {
    var prostoeChislo: Bool {
        for int in 2..<self {
            if self % int == 0 {
                return false
            }
        }
        return true
    }
    var chetnoeChislo: Bool {
        self % 2 == 0
    }
    var nechetnoeChislo: Bool {
        self % 2 != 0
    }
}

extension String {
    func dotem() -> String {
        var newString = ""
        for char in self {
            newString = "\(char)" + newString
        }
        return newString
    }
}
let word = "Menya zovut"
word.dotem()
3.prostoeChislo
