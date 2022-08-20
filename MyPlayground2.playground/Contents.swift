/*
var bank: Double = 100
while bank <= 500 {
    print(bank)
    bank += bank * 0.12
}


let interval = 10...45
for num in interval where num % 2 == 0 {
    print(num)
}

let vasyaLike: Set = ["Боевик", "Комедия", "Вестерн", "Триллер"]
let mashaLike: Set = ["Драма", "Мелодрама", "Комедия", "Триллер"]
let vasyaWatched: Array = ["Матрица", "Очень страшное кино", "Великолепная семерка", "Терминатор"]
let mashaWatched: Array = ["Терминатор", "Послезавтра", "Три метра над уровнем неба", "Большая рыба"]
let movies: [(String, String)] = [("Матрица" , "Боевик"), ("Стекло" , "Триллер"), ("Макс и Мири снимают порно" , "Комедия"), ("У холмов есть глаза" , "Ужасы")]

import Foundation

var swift: ( () -> Void )
swift = {
  print("Cool - I can use closures!")
}
func writeCode(using language: () -> Void) {
  language()
  print("That'll be eleventy billion dollars, please.")
}
writeCode(using: swift)

let sendMessageToFacebook = { (message: String) in
    if message != "" {
        print("Sending to Facebook: \(message)")
    } else {
        print("Your message was empty.")
    }
}
var someArray = [1, 4, 3]
// 1
let sort: ([Int]) -> [Int] = { array in
    return array.sorted { (a1: Int, a2: Int) -> Bool in
        return a1 < a2
    }
}
var resultArray1 = sort(someArray)
// 2
someArray.sort( by: < )
var resultArray2 = someArray


func modify(string: String, with closure: (String) -> (String) ) -> String {
    return closure(string)
}
let result = modify(string: "Hello") { string in
    return "\(string), World!"
}
print(result)

var tuple: () -> String = {
    return "Hello, World!"
    
 }
 
let anotherTuple = tuple
print(anotherTuple())


var lang = "ObjC"
let updateLanguage: (inout String) -> () = { lang in
    lang = "Swift"
}
updateLanguage(&lang)
print(lang)

var printClosure: (String) -> () = { String in
    print(String)
}
printClosure("Приветы")
type(of: printClosure)

var closureInt: (_ x: Int, _ y: Int) -> Int = {x, y in
   let sum = x+y
   print(sum)
    return sum
}
closureInt(10, 5)

let someClosure: (Int, Int) -> Int = {$0 * $1}
someClosure(10, 5)

 
var someClosure: (Int, Int) -> Int = {$0 - $1}
func someFunc( x: Int, y: Int, closure: (Int, Int) -> Int) -> Int {
    let operation = closure(x,y)
    return operation
}
someFunc(x: 5, y: 1, closure: someClosure)
someFunc(x: 5, y: 6, closure: *)

func someAction() -> (() -> Int) {
    var currentValue = 0
    return {
        currentValue = currentValue + 1
        return currentValue
    }
}
let increment = someAction()
print(increment())
print(increment())
 
let arrayOfInt = [2,55,1,2,77,24,1,2]
print( arrayOfInt.sorted(by: <) )

let arrayIfFloat = [2,4,6.2,11,2,7,6.7]
let sortedArray = arrayIfFloat.sorted() { $0 > $1 }
print(sortedArray)
*/

class Car {
    let brandAndModel: String
    let wheelsCount: Int
    var color = "White"
    init(brandAndModel: String, wheelsCount: Int = 4) {
        self.brandAndModel = brandAndModel
        self.wheelsCount = wheelsCount
    }
    init?(brand: String, model: String, wheelsCount: Int) {
        if wheelsCount < 4 {
            return nil
        } else {
            self.wheelsCount = wheelsCount
            self.brandAndModel = "\(brand) \(model)"
        }
    }
}

let mercedes = Car(brandAndModel: "Mercedes Benz E200")
let bmw = Car(brandAndModel: "BMW X5", wheelsCount: 6)

/*
 let array: [Int] = [1,-2,3,4,-5]
func sumArray( array :[Int]) -> Int {
    var sum: Int = 0
    for array in array {
        if array > 0 {
            sum = array+array
        }
    }
    return sum
}

sumArray(array: array)


func sumOfPositives (_ n: [Int] ) -> Int {
    return n.filter{ $0 > 0 }.reduce(0, +)
}
sumOfPositives([1,-2,3,4,-5]) //8


func squareArray(_ a : Array<Int>) -> Array<Int> {
    return a.map{$0*$0}
}
squareArray([1,2,3]) //[1, 4, 9]

func multOfPositives (_ n: [Int] ) -> Int {
    return n.filter{ $0 > 0 }.reduce(1, *)
}
multOfPositives([1,2,3,4])

func filterChet(_ n: [Int]) -> [Int] {
    return n.filter({$0%2 == 0})
}
filterChet([1,4,5,1,2,4,6,3,12,3])

func editStr( _ str: String ) -> String {
    // словарь соответсвий
    let dict = [Character("1"):"один", "2":"два", "3":"три", "4":"четыре", "5":"пять", "6":"шесть", "7":"семь", "8":"восемь", "9":"девять", "0":"ноль"]
    // строка так же является коллекций
    // а значит к ней применим метод map
    // в котором мы можем указать замыкание, с помощью которого
    // определить порядок обработки символов
    let replacedArr = str.map({
        (element: Character)->String in
        if dict[element] != nil {
            return dict[element]!
        }else{
            return String(element)
        }
    })
    //из получившегося массива генерируем строку
    var replacedStr = ""
    for ch in replacedArr {
        replacedStr += ch
    }
    return replacedStr
}
editStr("Мне 2 года") //"Мне два года"
editStr("Это стоит 10 рублей") //"Это стоит одинноль рублей"

class Man {
    var name = "Человек"
    deinit {
        print("Объект удален")
    }
}
var closure : (() -> Void)?
if true {
    let man = Man()
closure = {
        print(man.name)
    }
closure!() }
print("Программа завершена")


extension Int {
    mutating func squared() {
        self = self * self
    }
}
var someInt = 3
someInt.squared() // 9

struct Vector2D {
    var x = 0.0, y = 0.0
}
func + (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y + right.y)
}
let vector = Vector2D(x: 3.0, y: 1.0)
let anotherVector = Vector2D(x: 2.0, y: 4.0)
let combinedVector = vector + anotherVector
*/

