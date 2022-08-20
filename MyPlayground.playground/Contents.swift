import UIKit
import CoreFoundation
import Foundation
import CoreGraphics


let name = "Дракон"
let helllo = "Привет, меня зовут \(name)!"
let meters: Double = 10
let text = "моя длина \(meters * 3.28) фута"
print(helllo)
print(text)
let firstText = "Мой вес "
let weight = 12.4
let secondText = " тонны"
let resultText = firstText + String(weight) + secondText
print(resultText)

let firstString = "Swift"
let secondString = "Objective-C"
let anotherString = "Swift"
firstString == secondString
var isDragon = false
if isDragon {
    print("Привет,Дракон!")
} else {
    print("Привет, Тролль!")
}
let someBool = true
!someBool
someBool
let firstBool = true, secondBool = true, thirdBool = false
let one = firstBool || secondBool && thirdBool
let two = firstBool || thirdBool
typealias AgeType = UInt8
var myAge: AgeType = 29
let maxAge = AgeType.max
let myVar = 3.54
print(type(of: myVar))
let stringForHash = "Строка текста"
let intForHash = 23
let boolForHash = false
stringForHash.hashValue
intForHash.hashValue
boolForHash.hashValue
let myProgramStatus = (200, "In Work", true)
myProgramStatus
type(of: myProgramStatus)
typealias numberType = Int
let numbersTuple: (Int, Int, numberType, numberType) = (0, 1, 2, 3)
let statusTuple = (statusCode: 200, statusText: "In work", statusConnect: true)
(2, "alpha") < (1, "beta")
var intVar = 12
let myRange = 1..<500
let rangeInt =  1..<5
let someRangeInt: Range<Int>.Type
type(of:someRangeInt)
let anotherRangeInt = 51..<59
type(of:anotherRangeInt)
let rangeInt1: Range<Int> = 1..<10
let rangeString = "a"..<"z"
type(of:rangeString)
let rangeChar: Range<Character> = "a"..<"z"
type(of: rangeChar)
let myRange2 = ..<500
let myRange3 = 1...100
let intR = 1...10
intR.count
let floatR: ClosedRange<Float> = 1.0...2.0
floatR.contains(1.4)
let emptyR = 0..<0
emptyR.count // 0
emptyR.isEmpty // true
let rangeOne = 1...
type(of: rangeOne) // PartialRangeThrough<Int>
let rangeTwo = ..<10
type(of: rangeTwo) // PartialRangeUpTo<Int>
let range = 1...10
range.hashValue // 1819967165199576418
let range2 = 1..<10
range2.hashValue // 1819967165199576418
let array1 = [1,2,3,4,5,7,8,9,10]
print(array1)
Array(arrayLiteral: 1, 1, 2, 3, 5, 8, 12)
var lineArray = Array(0...9)
// изменяемый массив
var stringsArray = ["one", "two", "three", "four"]
// заменим несколько элементов
stringsArray[1...2] = ["five"]
stringsArray // ["one", "five", "four"]
stringsArray[2] // "four"
let secondAr = Array(1..<5) // [1, 2, 3, 4]
// исходный массив
let parentArray = ["one", "two", "three"]
// создаем копию массива
var copyParentArray = parentArray
copyParentArray // ["one", "two", "three"]
// изменяем значение в копии массива
copyParentArray[1] = "four"
// выводим значение массивов
parentArray // ["one", "two", "three"]
copyParentArray // // ["one", "four", "three"]
/* три константы, которые
 cтанут элементами массива */
let a1 = 1
let a2 = 2
let a3 = 3
var someArray = [1, 2, 3]
someArray == [a1, a2, a3] // true
someArray == [1,2,3]
// создаем три массива
let charsOne = ["a", "b", "c"]
let charsTwo = ["d", "e", "f"]
let charsThree = ["g", "h", "i"]
// создаем новый слиянием двух
var alphabet = charsOne + charsTwo
// сливаем новый массив с третьим
alphabet += charsThree
alphabet // ["a", "b", "c", "d", "e", "f", "g", "h", "i"]
var arrayOfArrays = [[1,2,3], [4,5,6], [7,8,9]]
var numArray = [1, 2, 3, 4, 5]
// количество элементов в массиве
let sliceOfArray = numArray[numArray.count-3...numArray.count-1] // [3, 4, 5]
let subArray = numArray.suffix(1)
numArray.last
numArray // [1, 2, 3, 4, 5, 6]
// вставляем новый элемент в середину массива
numArray.insert(100, at: 2) // [1, 2, 100, 3, 4, 5, 6]
numArray // [1, 2, 100, 3, 4, 5, 6]
// удаляем третий элемент массива (с индексом 2)
numArray.remove(at: 2) // 100
// удаляем первый элемент массива
numArray.removeFirst() // 1
// удаляем последний элемент массива
numArray.removeLast() // 6
/* итоговый массив содержит
  всего четыре элемента */
numArray // [2, 3, 4, 5]
numArray // [2, 3, 4, 5]
// удаляем последний элемент
numArray.dropLast() // [2, 3, 4]
// удаляем три первых элемента
let anotherNumArray = numArray.dropFirst(3)
anotherNumArray // [5]
numArray // [2, 3, 4, 5]
let randomArray = [3, 2, 4, 5, 6, 4, 7, 5, 906]
// поиск минимального элемента
randomArray.min() // 2
// поиск максимального элемента
randomArray.max() // 7

var unsortedArray = [3, 2, 5, 22, 8, 1, 29]
// метод sorted() возвращает отсортированную последовательность
// при этом исходный массив не изменяется
var sortedArray = unsortedArray.sorted()
unsortedArray // [3, 2, 5, 22, 8, 1, 29]
sortedArray // [1, 2, 3, 5, 8, 22, 29]
// метод sort() изменяет исходный массив
unsortedArray.sort()
unsortedArray // [1, 2, 3, 5, 8, 22, 29]
// исходный массив
let arrayOfNumbers = Array(1...10)
// его тип данных - Array<Int>
type(of: arrayOfNumbers) // Array<Int>.Type
arrayOfNumbers // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// получим часть массива (подмассив)
let slice = arrayOfNumbers[4...6]
slice // [5, 6, 7]
// его тип данных отличается от типа исходного массива
type(of: slice) // ArraySlice<Int>.Type
var dishes: Set<String> = ["хлеб", "овощи", "тушенка", "вода"]
var dishesTwo: Set = ["хлеб", "овощи", "тушенка", "вода"]
var members = Set<String>(arrayLiteral: "Энакин", "Оби Ван", "Йода")
var membersTwo = Set(arrayLiteral: "Энакин", "Оби Ван", "Йода")
// создание пустого множества
let emptySet = Set<String>()
// множество со значениями
var setWithValues: Set<String> = ["хлеб", "овощи"]
// удаление всех элементов множества
setWithValues = []
setWithValues // Set([])
// создаем пустое множество
var musicStyleSet: Set<String> = []
// добавляем к нему новый элемент
musicStyleSet.insert("Jazz") // (inserted true, memberAfterInsert "Jazz")
musicStyleSet  // {"Jazz"}




// создание множества со значениями
musicStyleSet = ["Jazz", "Hip-Hop", "Rock"]
musicStyleSet.contains("Hip-Hop")
musicStyleSet.count
// удаляем один из элементов
var removeStyleResult = musicStyleSet.remove("Hip-Hop")
removeStyleResult // "Hip-Hop"
musicStyleSet // {"Jazz", "Rock"}

// удаляем несуществующий элемент
musicStyleSet.remove("Classic") // nil

// удаляем все элементы множества
musicStyleSet.removeAll()
musicStyleSet // Set([])


// множество с нечетными цифрами
let oddDigits: Set = [1, 3, 5, 7, 9]
// множество с четными цифрами
let evenDigits: Set = [0, 2, 4, 6, 8]
// множество со смешанными цифрами
let differentDigits: Set = [3, 4, 7, 8]

let sub = differentDigits.subtracting(oddDigits)

let aSet: Set = [1, 2, 3, 4, 5]
let bSet: Set = [1, 3]
let cSet: Set = [5, 6, 7, 8]

aSet.isDisjoint(with: bSet)

bSet.isStrictSubset(of: aSet) // true
aSet.isStrictSuperset(of: bSet) // true var aSet: Set = [1, 2, 3, 4, 5]

let setOfNums: Set = [1,44,56,2,7,78,90]
let ssortedArray = setOfNums.sorted()


let dictionary = ["one":"один", "two": "два", "three":"три"]
dictionary // ["one": "один", "two": "два", "three": "три"]

Dictionary(dictionaryLiteral: (100, "Сто"), (200, "Двести"), (300, "Триста"))

// базовая коллекция кортежей (пар значений)
let baseCollection = [(2, 5), (3, 6), (1, 4)]
// создание словаря на основе базовой коллекции
let newDictionary = Dictionary(uniqueKeysWithValues: baseCollection)
newDictionary // [3: 6, 2: 5, 1: 4]

// массив звезд
let nearestStarNames = ["Proxima Centauri", "Alpha Centauri A",
"Alpha Centauri B"]
// массив расстояний до звезд
let nearestStarDistances = [4.24, 4.37, 4.37]
// получение словаря, содержащего пары значений
let starDistanceDict = Dictionary(uniqueKeysWithValues: zip(nearestStarNames,
                       nearestStarDistances))
print(starDistanceDict)

let a = ["Да", "Нет"]
let b = ["1", "0"]
var all = Dictionary(uniqueKeysWithValues: zip(a,b))
all["энергия"] = "2"
var newAll = all.updateValue("22", forKey: "энергия")
all

// Словарь с типом данных [Int:String]
let codeDesc = [200: "success", 300: "warning", 400: "error"]
type(of: codeDesc) // Dictionary<Int, String>.Type

let dictOne: Dictionary<Int,Bool> = [100: false, 200: true, 400: true]
let dictTwo: [String:String] = ["Jonh":"Dave", "Eleonor":"Green"]

var countryDict = ["RUS": "Россия", "BEL": "Белоруссия", "UKR": "Украина"]
// получаем значение элемента
var countryName = countryDict["BEL"]
countryName // "Белоруссия"
// изменяем значение элемента
countryDict["RUS"] = "Российская Федерация"
countryDict // ["RUS": "Российская Федерация", "BEL": "Белоруссия", "UKR": "Украина"]

let rumba = Dictionary<Int,Int>()

let char: Character = "\u{006F}"
var char2: Character = "\u{111A}"
let anotherChar: Character = "\u{65}\u{301}"
anotherChar // "é"}"
let thumbsUp = "\u{1f44d}" // "     "
let blackSkin = "\u{1f3fd}" // "
let combine = "\u{1f44d}\u{1f3fd}" // "   "
let cafeSimple = "caf\u{E9}" // "café"
let cafeCombine = "cafe\u{301}" // "café"
cafeSimple.count // 4
cafeCombine.count // 4

let name12 = "e\u{301}lastic" // "élastic"
let index = name12.startIndex

let firstChar = name12[index]
firstChar // "é"
type(of: firstChar) // Character.Type

let secondCharIndex = name12.index(after: name12.startIndex)
name12[secondCharIndex] // "l"

let puff = name12.unicodeScalars
puff

let abc = "abcdefghijklmnopqrstuvwxyz"
// индекс первого символа
let firstCharIndex = abc.startIndex
 // индекс четвертого символа
let fourthCharIndex = abc.index(firstCharIndex, offsetBy:3)
// получим подстроку
let subAbc = abc[firstCharIndex...fourthCharIndex]
subAbc // "abcd"
type(of: subAbc) // Substring.Type

let subStr = abc[fourthCharIndex...]
subStr // "defghijklmnopqrstuvwxyz"


let userName = "Mike"
if userName == "Alex" {
    print("Привет, администратор")
}

// переменная типа Bool
var logicVar = true
// проверка значения переменной
if logicVar == true {
   print("Переменная logicVar истинна")
}

logicVar = false
// полная форма проверки на отрицание
if logicVar == false {
    print("Переменная logicVar ложна")
}
// сокращенная форма проверки на отрицание
if !logicVar {
    print("Переменная logicVar вновь ложна")
}

if userName == "Alex" {
    print("Привет, администратор")
} else {
    print("Привет, пользователь")
}


let aa = 1054
let bb = 952
if aa+bb > 1000 {
    print( "Сумма больше 1000" )
} else {
    print( "Сумма меньше или равна 1000" )
}

// переменные типа Bool
var firstLogicVar = true
var secondLogicVar = true
// проверка значения переменных
if firstLogicVar || secondLogicVar {
    print("Одна или две переменные истинны")
} else {
    print("Обе переменные ложны")
}

if firstLogicVar || secondLogicVar {
    if firstLogicVar && secondLogicVar {
        print("Обе переменные истинны")
    } else {
        print("Только одна из переменных истинна")
    }
} else {
    print("Обе переменные ложны")
}

if firstLogicVar && secondLogicVar {
    print("Обе переменные истинны")
} else {
    if firstLogicVar || secondLogicVar {
        print("Только одна из переменных истинна")
    } else {
        print("Обе переменные ложны")
    }
}
let userName10 = "Helga"
if userName10 == "Alex" {
    print("Привет, администратор")
} else if userName10 == "Bazil" {
    print("Привет, модератор")
} else if userName10 == "Helga"{
    print("Привет, редактор")
} else {
    print("Привет, пользователь")
}

// проверка значения переменных
if firstLogicVar && secondLogicVar {
    print("Обе переменные истинны")
} else if firstLogicVar || secondLogicVar {
    print("Одна из переменных истинна")
} else {
    print("Обе переменные ложны")
}

let firstLogicVar111 = true
let secondLogicVar111 = true
if firstLogicVar111 || secondLogicVar111 {
    print("Одна из переменных истинна")
} else if firstLogicVar111 && secondLogicVar111 {
    print("Обе переменные истинны")
} else {
    print("Обе переменные ложны")
}

// количество жильцов в доме
var tenantCount = 6
// стоимость аренды на человека
var rentPrice = 0
/* определение цены на одного
человека в соответствии с условием */
if tenantCount < 5 {
    rentPrice = 1000
} else if tenantCount >= 5 && tenantCount <= 7 {
   rentPrice = 800
} else {
   rentPrice = 500
}
// вычисление общей суммы средств
var allPrice = rentPrice * tenantCount // 4800

if (..<5).contains(tenantCount) {
    rentPrice = 1000
} else if (5...7).contains(tenantCount) {
     rentPrice = 800
} else if (8...).contains(tenantCount) {
    rentPrice = 500
}

let x = 101
let y = ( x > 100 ? 100 : 50 )


let ad = 1
let bd = 2
// сравнение значений констант
ad <= bd ? print("AD меньше или равно BD") : print("AD больше BD")

// переменная типа Int
var height = 180
// переменная типа Bool
var isHeader = true
// вычисление значения константы
let rowHeight = height + (isHeader ? 20 : 10 )
// вывод значения переменной
rowHeight // 200

let i = Int.random(in: 1...100)
    let l = Int.random(in: 1...100)
    // вариант 1 (с И)
    if i > 50 && l > 50 {
        print("i and l > 50")
    }
    // вариант 2 (c запятой)
    if i > 50, l > 50 {
        print("i and l > 50")
    }

if let a = Int("43"), let b = Int("45"), a < b {
         print("a < b")
     }


var userMark = 2
// переменная для хранения сообщения
let message: String
switch userMark {
case 1:
    message = "Единица на экзамене! Это ужасно!"
case 2:
    message = "С двойкой ты останешься на второй год!"
case 3:
    message = "Ты плохо учил материал в этом году!"
case 4:
    message = "Неплохо, но могло быть и лучше"
case 5:
    message = "Бесплатное место в университете тебе обеспечено!"
default:
    message = "Переданы некорректные данные об оценке"
}
// вывод сообщения на консоль
print(message)



let dragonCharacteristics: (color: String, weight: Float) = ("зеленый", 3 )
switch dragonCharacteristics {
    case ("зеленый", 0..<2 ):
        print("Вольер No 1")
    case ("красный", 0..<2 ):
        print("Вольер No 2")
    case ("зеленый", 2...), ("красный", 2...):
        print("Вольер No 3")
    default:
        print("Дракон не может быть принят в стаю")
}

var dragonsCount = 1
switch dragonCharacteristics {
case ("зеленый", 0..<2 ):
    print("Вольер No 1")
case ("красный", 0..<2 ):
    print("Вольер No 2")
case ("зеленый", 2...) where dragonsCount < 5,
     ("красный", 2...) where dragonsCount < 5:
    print("Вольер No 3")
default:
    print("Дракон не может быть принят в стаю")
}

switch dragonCharacteristics {
case ("зеленый", 0..<2 ):
    print("Вольер No 1")
case ("красный", 0..<2 ):
    print("Вольер No 2")
case ("зеленый", 2...) where
        dragonCharacteristics.weight.truncatingRemainder(dividingBy: 1) == 0
        && dragonsCount < 5,
     ("красный", 2...) where
        dragonCharacteristics.weight.truncatingRemainder(dividingBy: 1) == 0
        && dragonsCount < 5:
    print("Вольер No 3")
default:
    print("Дракон не может быть принят в стаю")
}

switch dragonCharacteristics {
case ("зеленый", 0..<2 ):
    print("Вольер No 1")
case ("красный", 0..<2 ):
    print("Вольер No 2")
case ("зеленый", let weight) where
        weight > 2
        && dragonsCount < 5, ("красный", let weight) where
        weight > 2
        && dragonsCount < 5:
    print("Вольер No 3")
default:
    print("Дракон не может быть принят в стаю")
}

switch dragonCharacteristics {
case ("зеленый", 0..<2 ):
    print("Вольер No 1")
case ("красный", 0..<2 ):
    print("Вольер No 2")
case ("зеленый", let weight) where
        weight > 2
        && weight.truncatingRemainder(dividingBy: 1) == 0
        && dragonsCount < 5,
     ("красный", let weight) where
        weight > 2
        && weight.truncatingRemainder(dividingBy: 1) == 0
        && dragonsCount < 5:
    print("Вольер No 3. Вес дракона \(weight) тонны")
default:
    print("Дракон не может быть принят в стаю")
}

switch dragonCharacteristics {
case ("зеленый", 0..<2 ):
    print("Вольер No 1")
case ("красный", 0..<2 ):
    print("Вольер No 2")
case let (color, weight) where
    (color == "зеленый" || color == "красный")
    && weight.truncatingRemainder(dividingBy: 1) == 0
    && dragonsCount < 5:
        print("Вольер No 3. Вес дракона \(weight) тонны")
default:
    print("Дракон не может быть принят в стаю")
}

let someInt = 8
switch someInt {
case 1...:
    print( "Больше 0" )
case ..<0:
    print( "Меньше 0" )
default:
break }

let level: Character = "А"
// определение уровня готовности
switch level {
case "А":
    print("Выключить все электрические приборы ")
    fallthrough
case "Б":
    print("Закрыть входные двери и окна ")
    fallthrough
case "В":
    print("Соблюдать спокойствие")
default:
    break
}

// начальное значение
var p = 1
// хранилище результата сложения
var resultSum = 0
// цикл для подсчета суммы
while p <= 100 {
    resultSum += p
p += 1 }
resultSum // 55

var k = 1
var result = 0
repeat {
result += k
    k += 1
} while k <= 10
result

var д = 0
var sum = 0
while д <= 10 {
    д += 1
    if д % 2 == 1 {
continue }
sum += д }
sum // 30

let lastNum = 54
var currentNum = 4
var sumOfInts = 0
while currentNum <= lastNum {
    sumOfInts += currentNum
    if sumOfInts > 450 {
        print("Хранилище заполнено. Последнее обработанное число - \(currentNum)")
        break
}
    currentNum += 1
}

// массив целых чисел
let numArray2: Array<Int> = [10, 24, 35, 42, 51]
// в данной переменной будет храниться
// сумма элементов массива numArray
var result2: Int = 0
// цикл подсчета суммы
for number in numArray2 {
    result2 += number
}
result2 //

for number in 1...7 {
    print(number)
}
for number in "Swift" {
    print(number)
}

// внешняя переменная
var myChar = "a"
// внешняя константа
let myString = "Swift"
// цикл использует связанный параметр с именем,
// уже используемым глобальной переменной
for myChar in myString {
    // локальная константа
    // вне цикла уже существует константа с таким именем
    let myString = "Char is"
    print("\(myString) \(myChar)")
}
myChar // "a"
myString // Swift

for _ in 1...3 {
    print("Ура!")
}


var countriesAndBlocks = ["Россия": "СНГ", "Франция": "ЕС"]
for (countryName, _) in countriesAndBlocks {
    print("страна — \(countryName)")
}
for (_, orgName) in countriesAndBlocks{
    print("организация — \(orgName)")
}

print("Несколько фактов обо мне:")
let myMusicStyles = ["Rock", "Jazz", "Pop"]
for (index, musicName) in myMusicStyles.enumerated() {
    print("\(index+1). Я люблю \(musicName)")
}
// коллекция элементов от 1 до 10 с шагом 3
let intNumbers = [1, 4, 7, 10]
for element in intNumbers {
    // код, обрабатывающий очередной элемент
}
for i in stride( from: 1, through: 10, by: 3 ) {
    // тело оператора
}

var result9 = 0
for i in stride( from: 1, through: 1000, by:2 ) {
result9 += i }
result9 // 250000

// словарь с результатами игр
let resultsOfGames = ["Red Wings": ["2:1","2:3"],
"Capitals": ["3:6","5:5"],"Penguins": ["3:3","1:2"]]
type(of: resultsOfGames)
// обработка словаря
for (teamName, results) in resultsOfGames {
    // обработка массива результатов игр
    for oneResult in results {
        print("Игра команды с \(teamName)  — \(oneResult)")
    }
}

for m in 1...10 {
    if m % 2 == 0 {
        continue
    } else {
print(m) }
}

mainLoop: for i in 1...5 {
    for y in i...5 {
        if y == 4 && i == 2 {
            break mainLoop
        }
        print("\(i) — \(y)")
    }
}

let possibleString = "1945"
let convertPossibleString = Int(possibleString) // 1945
let unpossibleString = "Одна тысяча сто десять"
let convertUnpossibleString = Int(unpossibleString) // nil

let x1 = Int("12")
     type(of: x1) // Optional<Int>.Type
     let x2 = Int(43.2)
     type(of: x2) // Int.Type

let optOne: UInt? = nil
let optTwo: UInt? = 32
optOne != nil // false
optTwo != nil // true

var fiveMarkCount: Int? = 8
var allCakesCount = 0;
// определение наличия значения
if fiveMarkCount != nil {
    // количество пирожных за каждую пятерку
    let  cakeForEachFiveMark = 2
    // общее количество пирожных
    allCakesCount = cakeForEachFiveMark * fiveMarkCount!
}
allCakesCount // 16

let markCount: Int? = 8
// определение наличия значения
if let marks = markCount {
    print("Всего \(marks) оценок")
}

var pointX: Int? = 10
var pointY: Int? = 3
if let _ = pointX, let _ = pointY {
   print("Точка установлена на плоскости")
}
if let x = pointX, x > 5 {
    print("Точка очень далеко от вас ")
}

let coinsInNewChest = "140"
type(of: coinsInNewChest)
var allCoinsCount = 1301
/* проверяем существование значения
с использованием опционального связывания */
if let coins = Int(coinsInNewChest) {
    allCoinsCount += coins
} else {
    print("У нового дракона отсутствует золото")
}


let optionalInt: Int? = 20
var mustHaveResult: Int = 0
if let unwrapped = optionalInt {
    mustHaveResult = unwrapped
} else {
    mustHaveResult = 0
}

func printMessage() {
    print("Сообщение принято")
}
// вызываем функцию по ее имени
printMessage()
printMessage()

func sumTwoInt(_ a7: Int, _ b7: Int) -> Int {
    let result33 = a7 + b7
    print("Результат операции - \(result33)")
    return result33
}
var result33 = sumTwoInt(10, 12) // 22


func printRequestString(codes: Int...) -> Void {
    var codesString = ""
    for oneCode in codes {
        codesString += String(oneCode) + " "
    }
    print("Получены ответы — \(codesString)")
}
printRequestString(codes: 600, 800, 301)
printRequestString(codes: 101, 200)


func getCodeDescription(code: Int) -> (code: Int, description: String) {
    let description: String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknown"
    }
    return (code, description)
}
let request = getCodeDescription(code: 99)
request.description // "Error"
request.code // 45

func returnMessage(code: Int, message: String = "Код - ") -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}
returnMessage(code: 300) //"Код - 300"

// функция вывода текста на консоль
func printText() {
    print("Функция вызвана")
}
// функция, которая возвращает функцию
func returnPrintTextFunction() -> () -> Void {
    return printText
}
print("шаг 1")
let newFunctionInLet = returnPrintTextFunction()
print("шаг 2")
newFunctionInLet()
print("шаг 3")

// функция генерации случайного массива банкнот
func generateWallet(walletLength: Int) -> [Int] {
 // существующие типы банкнот
    let typesOfBanknotes = [50, 100, 500, 1000, 5000]
       // массив банкнот
       var wallet: [Int] = []
       // цикл генерации массива случайных банкнот
       for _ in 1...walletLength {
           wallet.append( typesOfBanknotes.randomElement()! )
       }
       return wallet
   }
   // функция подсчета денег в кошельке
   func sumWallet(
       banknotesFunction wallet: (Int) -> [Int],
       walletLength: Int
   ) -> Int? {
       // вызов переданной функции
       let myWalletArray = wallet( walletLength )
       var sum: Int = 0
       for oneBanknote in myWalletArray {
           sum += oneBanknote
       }
   return sum }
   // передача функции в функцию
   sumWallet(banknotesFunction: generateWallet, walletLength: 20) // 6900

func oneStep(coordinates: inout (Int, Int), stepType: String) -> Void {
    func up( coords: inout (Int, Int)) {
        coords = (coords.0+1, coords.1)
    }
    func right( coords: inout (Int, Int)) {
        coords = (coords.0, coords.1+1)
    }
    func down( coords: inout (Int, Int)) {
        coords = (coords.0-1, coords.1)
    }
    func left( coords: inout (Int, Int)) {
        coords = (coords.0, coords.1-1)
    }
    switch stepType {
    case "up":
        up(coords: &coordinates)
    case "right":
        right(coords: &coordinates)
    case "down":
        down(coords: &coordinates)
    case "left":
        left(coords: &coordinates)
    default:break }
    }
    var coordinates = (1, -51)
    oneStep(coordinates: &coordinates, stepType: "up")
    oneStep(coordinates: &coordinates, stepType: "right")
    coordinates // (.0 11, .1 -4)

func countdown(firstNum num: Int) -> Void {
    print(num)
    if num > -10 {
        // рекурсивный вызов функции
        countdown(firstNum:num-1)
    }
}
countdown(firstNum: 99)

// массив с купюрами
var wallet = [10,50,100,100,5000,100,50,50,500,100]
// функция отбора купюр
func handle100(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if banknote == 100 {
            returnWallet.append(banknote)
        }
}
    return returnWallet
}
// вызов функции отбора купюр с достоинством 100
handle100(wallet: wallet) // [100, 100, 100, 100]

func handleMore1000(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if banknote >= 1000 {
            returnWallet.append(banknote)
        }
}
    return returnWallet
}
// вызов функции отбора купюр с достоинством более или равно 1000
handleMore1000(wallet: wallet) // [5000]




// единая функция формирования результирующего массива
func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if closure(banknote) {
            returnWallet.append(banknote)
        }
}
    return returnWallet
}
// функция сравнения с числом 100
func compare100(banknote: Int) -> Bool {
    return banknote == 100
}
// функция сравнения с числом 1000
func compareMore1000(banknote:Int) -> Bool {
    return banknote >= 1000
}
// отбор
let resultWalletOne = handle(wallet: wallet, closure: compare100)
let resultWalletTwo = handle(wallet: wallet, closure: compareMore1000)

// отбор купюр достоинством выше 1000 рублей
// аналог передачи compareMore1000
handle(wallet: wallet, closure: { (banknote: Int) -> Bool in
    return banknote >= 1000
})
// отбор купюр достоинством 100 рублей
// аналог передачи compare100
handle(wallet: wallet, closure: { (banknote: Int) -> Bool in
    return banknote == 100
})

handle(wallet: wallet) { banknote in
    for number in Array(arrayLiteral: 100,500) {
        if number == banknote {
return true }
}
    return false
}

let successBanknotes = handle(wallet: wallet) { [100,500].contains($0) }
     successBanknotes // [100, 100, 100, 500, 100]

let closure: () -> Void = {
    print("Замыкающее выражение")
}
closure()




// передача в функцию строкового значения
let closurePrint: (String) -> Void = { text in
    print(text)
}
closurePrint("Text")
// передача в функцию целочисленных значений
// с осуществлением доступа через краткий синтаксис $0 и $1
var sum87: (_ numOne: Int, _ numTwo: Int) -> Int = {
$0 + $1 }
sum87(10, 34) // 44

let array = [1,44,81,4,277,50,101,51,8]
var sortedArray77 = array.sorted(by: { (first: Int, second: Int) -> Bool in
    return first < second
})
sortedArray77 // [1, 4, 8, 44, 50, 51, 81, 101, 277]

sortedArray = array.sorted(by: { $0 < $1 })
sortedArray // [1, 4, 8, 44, 50, 51, 81, 101, 277]
print(sortedArray)

sortedArray = array.sorted(by: <)
sortedArray // [1, 4, 8, 44, 50, 51, 81, 101, 277]



func makeIncrement(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func increment() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return increment
}
var incrementByTen = makeIncrement(forIncrement: 10)
var incrementBySeven = makeIncrement(forIncrement: 7)
incrementByTen()
incrementByTen()
incrementByTen()
incrementBySeven() // 7
incrementBySeven() // 14
incrementBySeven() // 21


var incrementByFive = makeIncrement(forIncrement: 5)
var copyIncrementByFive = incrementByFive
incrementByFive()
incrementByFive()


var arrayOfNames = ["Helga", "Bazil", "Alex"]


func printName(nextName: @autoclosure () -> String) {
    // какой-либо код
    print(nextName())
}
printName(nextName: arrayOfNames.remove(at: 0))


var arrayOfClosures: [()->Int] = []
func addNewClosureInArray(_ newClosure: @escaping ()->Int) {
    arrayOfClosures.append(newClosure) // ошибка
}
addNewClosureInArray({return 100})
addNewClosureInArray{return 1000}
arrayOfClosures[0]() // 100
arrayOfClosures[1]() // 1000

// передача замыкания в метод filter
  let array2 = [1, 2, 3, 4, 5]
  let smallerThanThree = array2.filter { $0 < 3 }
  // передача замыкания в метод sorted()
  [1,5,1,6,12].sorted() { $0 < $1 }
print(smallerThanThree)

let myArray88 = [2, 4, 5, 7]
var newArray88 = myArray88.map{$0*$0}
newArray88 // [2, 4, 5, 7]

let array66 = [2, 4, 5, 7]
   var newArray66 = array66.map({(value: Int) -> Int in
       return value
   })

let intArray = [1, 2, 3, 4]
let boolArray = intArray.map{$0 > 2}
boolArray // [false, false, true, true]

let numbers = [1, 2, 3, 4]
let mapped = numbers.map { Array(repeating: $0, count: $0) }
mapped // [[1], [2, 2], [3, 3, 3], [4, 4, 4, 4]]

let milesToDest = ["Moscow":120.0,"Dubai":50.0,"Paris":70.0]
let kmToDest = milesToDest.map { name,miles in [name:miles * 1.6093] }
kmToDest // [["Dubai": 80.465], ["Paris": 112.651], ["Moscow": 193.116]]


let mappedCloseStars = ["Proxima Centauri": 4.24, "Alpha Centauri A": 4.37]
let newCollection = mappedCloseStars.mapValues{ $0+1 }
newCollection  // ["Proxima Centauri": "5.24", "Alpha Centauri A": "5.37]

let someArray11 = [[1, 2, 3, 4, 5], [11, 44, 1, 6], [16, 403, 321, 10]]
let filterSomeArray = someArray11.flatMap{$0.filter{ $0 % 2 == 0}}
filterSomeArray // [2, 4, 44, 6, 16, 10]

let stringArray = ["1", "2", "3", "four", "5"]
let intFromStringArray = stringArray.map() { Int($0) }
intFromStringArray // [1, 2, 3, nil, 5]
let arrayWitoutNil = stringArray.compactMap() { Int($0) }
arrayWitoutNil // [1, 2, 3, 5]


let numArray99 = [1, 4, 10, 15]
let even = numArray99.filter{ $0 % 2 == 0 }
even // [4, 10]

let starDistanceDict1 = ["Wolf 359": 7.78, "Alpha Centauri B": 4.37, "Barnard's Star" : 5.96]
let closeStars = starDistanceDict1.filter { $0.value < 5.0 }
closeStars // ["Alpha Centauri B": 4.37]

let cash = [10, 50, 100, 500]
let total = cash.reduce(210, +) // 870

let multiTotal = cash.reduce(210, { $0 * $1 })
multiTotal // 5250000000
let totalThree = cash.reduce(210, {a,b in a-b})
totalThree // -450

let collectionOne = [1, 2, 3]
let collectionTwo = [4, 5, 6]
let zipSequence = zip(collectionOne, collectionTwo)
type(of: zipSequence) // Zip2Sequence<Array<Int>, Array<Int>>.Type
// генерация массива из сформированной последовательности
Array(zipSequence) // [(.0 1, .1 4), (.0 2, .1 5), (.0 3, .1 6)]
// генерация словаря на основе последовательности пар значений
let newDictionary1 = Dictionary(uniqueKeysWithValues: zipSequence)
newDictionary1 // [1: 4, 3: 6, 2: 5]






func countSidesOfShape(shape: String) -> Int? {
    switch shape {
    case "треугольник":
        return 3;
    case "квадрат":
        return 4;
    case "прямоугольник":
        return 4;
default:
return nil; }
}

func maybePrintCountSides(shape: String) {
    if let sides = countSidesOfShape(shape: shape) {
        print("Фигура \(shape) имеет \(sides) стороны")
    } else {
        print("Неизвестно количество сторон фигуры \(shape)")
    }
}

func someFunction() {
    defer {
        print("action in defer")
    }
defer {
        print("another action in defer")
    }
    print("action in function")
}
someFunction()


var arrayOfNames99 = ["Helga", "Bazil", "Alex"]
print(arrayOfNames99.count)
let nextName = { arrayOfNames99.remove(at: 0) }
arrayOfNames99.count //3
nextName()
arrayOfNames99.count //2

let baseCollection55 = [1,2,3,4,5,6]
let myLazyCollection55 = baseCollection55.lazy
type(of:myLazyCollection55) // LazySequence<Array<Int>>.Type
let collection55 = myLazyCollection55.map{$0 + 1}
type(of:collection55) // LazyMapSequence<Array<Int>, Int>.Type

let resultCollection = [1,2,3,4,5,6].lazy.map{$0 + 1}.filter{$0 % 2 == 0}
Array(resultCollection) // [2, 4, 6]


