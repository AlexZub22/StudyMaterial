import Foundation
import UIKit
import Darwin
import os

// Урок 1

/* var number = 13
type(of: number)
number = 356
let num1 = 45
let num2 = 32.7
Double(num1)+num2
Double(44)/Double(37)


let positiveNumber = 3689749871588
positiveNumber / 10 % 10
let schoolars = 150
let apples = 4099999
let applesForSchoolars = apples / schoolars
let applesInBasket = apples % schoolars

let intNum = 10
print("Мне \(intNum) лет")

let initialNumber = 49
let resultString = "задано число \(initialNumber). Предыдущее: \(initialNumber - 1). Следующее: \(initialNumber + 1)"
print(resultString)

let firstSpeed = 140
let meetTime = 3
let dist = 960

let firstDist = meetTime * firstSpeed
let secondDist = dist - firstDist
let secondSpeed = secondDist / meetTime
print("Второй состав двигался со скоростью \(secondSpeed) км/ч")
var a = "Привет"
var b = "Hello"
let temp = a
a = b
b = temp
a
b

let lenght = 100
let height = 2

let sonLenght = 40
let daughterLenght = 30
let fatherLenght = lenght - sonLenght - daughterLenght
let square = fatherLenght * height


let minutes = 816841864816486
let minutesInDay = 60 * 24
let usefulMinutes = minutes % minutesInDay
let hours = usefulMinutes / 60
let mins = usefulMinutes % 60
let hoursStr = hours > 9 ? "\(hours)" : "0\(hours)"
let minsStr = mins > 9 ? "\(mins)" : "0\(mins)"
print("\(hoursStr):\(minsStr)")

var number7 = 7
let nextChetNum = number7 % 2 == 0 ? "\(number7 + 2)" : "\(number7 + 1)"

let treeCharsNum = 475
let units = treeCharsNum % 10
let decimal = treeCharsNum / 10 % 10
let hundreds = treeCharsNum / 100
let resultOfSum = units + decimal + hundreds

let distDay = 800
let sumDist = 6000

let intDays = sumDist / distDay
let ostatok = sumDist % distDay == 0 ? Double(intDays) * 1.2 : (Double(intDays) + 1) * 1.2
*/

// Урок 2

// Составные операторы += -= *= /= %=
/*
//Range
let number = 2
// Принадлежность к диапазону
let closedRange = 1 ... 45
let range = 3 ..< 29
let cond1 = closedRange ~= number
let cond2 = range ~= number
let cond3 = range ~= 29

cond1 || cond2
cond1 && cond2
!cond2
cond2 || (cond1 && !cond3)

// Тернарный
let name = "Vasya"
let nameCond = 2...15 ~= name.count
2...15 ~= name.count ? print("OK!") : print("Error!")

// Optional
var word: String?
word = "Слово"
let defaultWord = "Длина"
print(word!)

// Опциональное связывание
 print(word ?? defaultWord)


// Байкер Вася

let mkadDist = 109
let vasyaSpeed = 80
let time = 3
let direction = true
let vasyaDist = vasyaSpeed * time
let ostatok = vasyaDist % mkadDist
let note = direction ? ostatok : mkadDist - ostatok

// Задано 2 числа
let numberVasya = 646
let numberPetya = 10

let oneLast = numberVasya % 10
let twoLast = numberVasya % 100 / 10
let sumOflast2 = oneLast + twoLast
let result: () = sumOflast2 < numberPetya && sumOflast2 != numberPetya  ? print("Сумма двух последних чисел numberVasya меньше numberPetya") : (sumOflast2 == numberPetya ? print("Сумма двух последних чисел numberVasya равна numberPetya") : print("Сумма двух последних чисел numberVasya больше numberPetya"))


// Задано трехзначное число
let bigNumber = 527

let secondNumberOfBig = bigNumber % 100 / 10
let firstNumberOfBig = bigNumber / 100
let lastNumberOfBig = bigNumber % 10

let pop: () = (firstNumberOfBig == lastNumberOfBig) && (firstNumberOfBig == secondNumberOfBig) && (secondNumberOfBig == lastNumberOfBig) ? print("Числа в bigNumber одинаковые") : print ("Числа в bigNumber различны")
// Кортежи
var iPhone = ("SE", 256, "Product(red)")
iPhone.0
let (model, rom, color) = iPhone
model

// Блондинка купила машину

let blondCar = (brend: "BMW", color: "баклажановый", price: 160000)
let nameFirend = "Олеся"
let dollarCource = 75
let priceForMessage = (blondCar.price * 125 / 100) / dollarCource
let message = "Привет, \(nameFirend)! Я купила \(blondCar.color) \(blondCar.brend) за \(priceForMessage) долларов"
print(message)


typealias KM = Double
let rasstoyanie: KM = 9.456
let rasstoyanie2: Double = 5.44
rasstoyanie + rasstoyanie2
typealias Exercises = (prised: Int, otzhim: Int, podt: Int, press: Int)
let myExercises: Exercises = (prised: 80, otzhim: 75, podt: 20, press: 90)
let davidychExercises: Exercises = (1500, 1000, 1, 3000)
let compare = (myExercises.prised > davidychExercises.prised, myExercises.otzhim > davidychExercises.otzhim, myExercises.podt > davidychExercises.podt, myExercises.press > davidychExercises.press)
let (prised, otzhim, podt, press) = compare
prised ? print("Я приседаю больше") : print("Давидыч приседает больше")

// Сортировка массива
var numbers: [Int] = [10, 4, 12, 1, 3]
numbers.sort()
print(numbers)
// sort() сортирует исходный массив, sorted() возвращает новый отсортированный массив не трогая исходный
numbers.sort(by: {$0 > $1})
var filteredNums = numbers.filter({$0 % 2 == 0})
print(filteredNums)

//prefix() возвращаеи отфильтрованный массив, пока выполняется условие
var filteredNums2 = numbers.prefix(while: {$0 > 4})
// drop() удаляет неподходящие значения
// map() проходит по всем элементам массива и преобразует их
var mapedNums = numbers.map({$0 * $0})
mapedNums

// Массивы
var trees = ["baobab", "bereza", "dub", "Acacia"]
trees.append("Sequoya")
trees.insert("Bereza", at: 4)
trees.count
trees.isEmpty
let filteredTrees = trees.filter { tree in
    tree.first == "b"
}
trees
trees.sort()
trees.sorted { firstTree, lastTree in
    firstTree.count < lastTree.count
}
let sortedTrees = trees.sorted { firstTree, lastTree in firstTree > lastTree
    
}
let mapedTrees = trees.map { tree in
    "В слове \(tree) \(tree.count) символов"
}
print(mapedTrees)


// Множества
var circleMetro: Set<String> = ["Курская", "Киевская", "Проспект мира", "Белорусская"]
let insertResult = circleMetro.insert("Павелецкая") // кортеж
insertResult.inserted
insertResult.memberAfterInsert
circleMetro.contains("Цветной бульвар")
let k = circleMetro.remove("Курская")
let pav = circleMetro.remove("Цветной бульвар")
print(circleMetro)

// Список продуктов
var borshProducts: Set = ["svekla", "kartofel", "fasol", "tomatnaya pasta", "luk", "chesnok", "voda"]
var haveProducts: Set = ["tomatnaya pasta", "chesnok", "voda"]
let nuzhniKupit = borshProducts.symmetricDifference(haveProducts)
print("Для приготовления борща необходимо приобрести следующий список продуктов \(nuzhniKupit)")

//Вася и интернет
var firstHouseProviders: Set = ["MTS", "Beeline","Megafon"]
var secondHouseProviders: Set = ["Tele2", "Vympel com", "MTS", "Beeline"]
var providersForVasya = firstHouseProviders.intersection(secondHouseProviders)
print("Вася может подключится к следующим провайдерам \(providersForVasya)")

// Словари
var animalsCount: [String: Int] = ["wolf": 4,
                                   "hare": 6,
                                   "elephant": 1, "rhino": 2, "lion": 3 ]
// control + i табуляция в XCODE
//cmd + z отмена действия
animalsCount["makaka"] = 4
animalsCount["wolf"] = 5
let rhino = animalsCount.removeValue(forKey: "rhino")
animalsCount.count
let json: [String: Any] = [
    "name": "Вася",
    "address": ["city": "Москва", "street": "Пушкина"]]
let address = json["address"]! as! [String: String]
address["city"] //для сети swifty jsn фреймворк

// Логин пароль

var db = ["supervasya": (pwd: "1234", name: "Вася"),
          "petyabigboss": (pwd: "2251", name: "Петя"),
          "alisakisa": (pwd: "8373", name: "Алиса"),
          "onotoleynalivaiskorey": (pwd: "7363", name: "Анатолий")
]
let authForm = (login: "alisakisa", pass: "8373")
let value = db[authForm.login]
let cond = value?.pwd == authForm.pass
cond ? print("Привет, \(value!.name)!") : print("Ошибка авторизации!")
let regForm = (login: "arkadiy", password: "9875", name: "Аркадий")
let regCond = db[regForm.login] == nil
regCond ? db[regForm.login] = (regForm.password, regForm.name) : print("Такой пользователь уже существует")
let arkadiy = db["arkadiy"]
// Циклы
let primes = [2, 3, 5, 7, 11, 13]
for (n,prime) in primes.enumerated() {
    print("\(n) = \(prime)")
}

// Вредный работодатель

var salary = 124000
let part = salary * 20 / 100
while salary > 0 {
    print("Э, дай деняк!")
    salary -= part
    
    salary != 0 ? print("Оставшиеся \(salary) рублей будут чуть позже") : print("Все! Я с тобой рассчитался, смерд! Иди лесом!")
}
print("Ну, наконец-то... Пойду в таверну!")
//Спортсмен
let startDist: Double = 4
let finalDist: Double = 12
var days = 1
var currentDist = startDist
let percent = 10
let koeff = 1 + Double(percent) / 100
while currentDist < finalDist {
    currentDist *= koeff
    days += 1
}
print("На \(days) день пробег составит не менее \(finalDist)")
currentDist
// Массив учеников
let pupilsSurnames = ["Petrov", "Ivanov", "Sidorov", "Madi"]
let notes = [(4,4), (3,5), (3,3), (5,5)]
for (index, pupil) in pupilsSurnames.enumerated() {
    print("\(pupil): \(notes[index].1)")
}
//Вклад в банке
var deposit: Double = 50000
let procentInYear: Double = 15
let endDeposit: Double = 100000
var year = 0
while deposit < endDeposit {
    deposit += deposit * procentInYear / 100
    Int(deposit)
    year += 1
}
print("На \(year) год депозит составил \(Int(deposit))")
// факториал
var factorial = 1
for num in  1...15 {
    factorial *= num
    print(factorial)
}
//Создать целочисленную переменную, положить в нее однозначное число. Вывести в консоль таблицу умножения на это число. Пример: Число = Результат в консоли :
// 6 * 2 = 12
// 6 * 3 = 18
// ..........
// 6 * 9 = 54
var superNumber = 4
var point: Int
for i in 2...9 {
    point = superNumber * i
    print("\(superNumber) * \(i) = \(point)")
}
*/
//Алина посетила два разных курса по веб-разработке. В каждом из курсов есть свой перечень тем для изучения. Некоторые темы могут повторяться. Задача - вывести полный перечень тем, который Алина освоила на обоих курсах.
let course1: Set = ["html", "JavaScript", "Основы веб разработки", "разработка сайта"]
let course2: Set = ["JavaScript", "CSS"]
let alinaKnowlege = course1.union(course2)
print(alinaKnowlege)
//Создать словарь животных типа [String: Int], где ключ - Название животного, а значение его вес в килограммах. Проверить, способен ли человек поднять одно из животных, имеющихся в словаре (порог поднятия считать равным 80 кг). Результат распечатать в консоль в виде: "Курица весит 3 кг. Я могу ее поднять" или "Слон весит 1500 кг. Он слишком тяжелый для меня"
let animals = ["Поросенок": 200, "Собака": 60, "Гусь": 15, "Лошадь": 400]
let humanPower = 80
for (animal, weight) in animals {
    weight < humanPower ? print("\(animal) весит \(weight) кг. Я могу поднять это животное") : print("\(animal) весит \(weight) кг. Я не могу поднять это животное. Оно слишком тяжелое")
}
// if - else
/*
let i = 8
switch i {
case let k where k < 0:
    print("i - отрицательное число")
case let k where k > 0:
    print("i - положительное число")
case 0:
    print("i - равно 0")
default:
    print("i - фуфло")
}


// Требуется определит, является ли данный год високосным. (Напомним, что год является високосным, если его номер кратен 4, но не кратен 100, а также если он кратен 400.)
let year = 2024
let visCondition = (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
if visCondition {
    print("\(year) - високосный")
} else {
    print("\(year) - невисокосный")
}
// Требуется определить, можно ли от шоколадки размером n * m долек отломить k долек, если разрешается сделать один разлом по прямой между дольками (то есть разломить шоколадку на два прямоугольника)
let lenght = 7
let width = 4
let part = 10
let countCondition = part < lenght * width
let kratCondition = part % lenght == 0 || part % width == 0
let choCondition = countCondition && kratCondition
if choCondition {
    print("Можно отломить \(part) долек от шоколадки размером \(width) * \(lenght) долек")
} else {
    print("Нельзя отломить \(part) долек от шоколадки размером \(width) * \(lenght) долек")
}
// - Можно отломить по длине
// - Можно отломить по ширине
// - Нельзя отломить, так как количество больше чем в шоколадке
//- Нельзя отломить по кратности
switch part {
case lenght where part % lenght == 0 :
    print("Можно отломить по длине")
case width where part % width == 0 && lenght > width :
    print("Можно отломить по ширине")
case let h where part > lenght * width :
    print("Нельзя отломить, так как количество больше чем в шоколадке")
case let u where part % lenght != 0 && part % width != 0:
    print("Нельзя отломить по кратности")
default :
    print("Шоколадка съедена")
}
// Даны три целых числа A, B, C. Определить, есть ли среди них хотя бы одно четное и хотя бы одно нечетное.
let num1 = 5
let num2 = 19
let num3 = 22
*/
//Фирме принадлежат два магазина. Известна стоимость товаров, проданных в каждом магазине за каждый день в июле и августе, которая хранится в двух массивах. Получить общую стоимость проданных фирмой товаров за два месяца.
let firstShop = [4500, 2560, 4320, 9768, 3400]
let secondShop = [12000, 45000, 54309, 34578, 12756]
var sum = 0
for index in 0..<firstShop.count {
    sum += firstShop[index]
    sum += secondShop[index]
}
sum
/*
// В некотором году (назовем его условно первым) на участке в 100 гектаров средняя урожайность ячменя составила 20 центнеров с гектара. После этого каждый год площадь участка увеличивалась на 5%, а средняя уражайность на 2%. Определить: а) в каком году урожайность превысит 22 центнера с гектара; б) в каком году площадь участка станет больше 120; в) в каком году общий урожай, собранный за все время, начиная с первого года: превысит 800 центнеров.

var square = 100.0
var massaOnePart = 20.0
var addSquareKoeff = 1.05
var addMassaKoef = 1.02
var year = 2020
var generalMassa = massaOnePart * square
var isMassaComplete = false
var isSquareComplite = false
var isGeneralComplete = false
var massaYear = year
var squareYear = year
var generalYear = year
while massaOnePart <= 22 || square <= 120 || generalMassa <= 800 {
    if !isMassaComplete && massaOnePart > 22 {
            print("Масса превысила 22 центнера с гектара в \(year) году.")
            isMassaComplete = true
            massaYear = year
    }
    if !isSquareComplite && square > 120 {
            print("Площадь превысила 120 гектар в \(year) году.")
            isSquareComplite = true
            squareYear = year
    }
    if !isGeneralComplete && generalMassa > 800 {
            print("Общая масса превысила 800 центнеров с гектара в \(year) году. \(generalMassa)")
            isGeneralComplete = true
            generalYear = year
    }
    square *= addSquareKoeff
    massaOnePart *= addMassaKoef
    let yearMasaa = massaOnePart * square
    generalMassa += yearMasaa
    year += 1
}
massaYear
squareYear
generalYear
// 5 параллелипипидов
var figureLenght = [10, 20, 15, 13, 22]
var figureWidth = [5, 11, 10, 7, 9]
var figureHeght = [6, 18, 11, 10, 17]
var figureValue = [Int]()

for index in 0...4 {
    figureValue.append(figureHeght[index] * figureWidth[index] * figureLenght[index])
    
}
var maxElement = figureValue.max()
var minElement = figureValue.min()
figureValue.enumerated()
var maxIndex = figureValue.index(of: maxElement!)
var minIndex = figureValue.index(of: minElement!)
print("Максимальный объем фигуры составил - \(maxElement!))")
print("Минимальный объем фигуры составил - \(minElement!)")
print("\(maxElement)")


var arrayInts = [Int]()
for _ in 1...15 {
    arrayInts.append(Int.random(in: 0...150))
}
var newArray = [Int]()
for (index, element) in arrayInts.enumerated() {
    if index % 2 != 0 && element % 2 == 0 {
        arrayInts.remove(at: index)
        newArray = arrayInts
    } else if element % 3 == 0 && element % 5 == 0 {
        arrayInts.remove(at: index)
        newArray = arrayInts
    }
}
print(newArray)

func square(length: Double, width: Double) -> Double {length * width}
func sumDist(beginKm: Double, percent: Double, days: Int) -> Double {
    guard days > 0 else { return 0 }
    guard days > 1 else { return beginKm }
    var dist = beginKm
    var currentDist = beginKm
    for _ in 2...days {
        currentDist += currentDist * (percent/100)
        print(currentDist)
        dist += currentDist
    }
    return dist
}

let result = sumDist(beginKm: 4, percent: 7, days: 12)
// Функция square
func quadrat(side: Double) -> (perimeter: Double, square: Double, diagonal: Double) {
    let perimeter = side * 4
    let square = pow(side, 2)
    let diagonal = sqrt (pow(side, 2) + pow(side, 2))
    return (perimeter, square, diagonal)
}
let (perimeter, square, diagonal) = quadrat(side: 3)
print(perimeter)
print(square)
print(diagonal)

// функц season
// простое число делится само на себя либо на единицу
func season(month: Int) -> () {
    switch month {
    case 1...2, 12:
        print("Месяц принадлежит к зиме")
    case 3...5:
        print("Месяц принадлежит к весне")
    case 6...8:
        print("Месяц принадлежит к лету")
    case 9...11:
        print("Месяц принадлежит к осени")
    default:
        print("Неверно заданы данные")
    }
}
season(month: 5)

func isPrime(num: Int) -> Bool {
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    return true
}
isPrime(num:7)

// func type
func triangle(katet: Double, side: Double) -> Double {
    let secondKatet = sqrt(side * side - katet * katet)
    let square = katet * secondKatet / 2
    return square
}

let sq = triangle(katet: 4, side: 5)
func rect(lenght: Double, width: Double) -> Double {
    lenght * width
}
let rectSquare = rect(lenght: 4, width: 6)
var figure: (Double, Double) -> Double = triangle
func square(side1 : Double, side2: Double, figure: (Double, Double) -> Double) -> Double {
    let sq = figure(side1, side2)
    return sq
}
square(side1: 5, side2: 8, figure: rect)
// clousure
let message = {(user: String, adresat: String?, text: String) in
    if let adresat = adresat {
        print("\(user): \(adresat), \(text)")
    } else {
        print("\(user): \(text)")
    }
}
message("Егор", nil, "Привет всем!")
message("Акакий", "Егор", "И тебе не кашлять!")
message("Егор", "Акакий", "Не кашляю уже давно")

let prodDescript = {(count: Int, price: Double, title: String) in
    let cost = Double(count) * price
    let rubles = Int(cost)
    let kops = Int(cost * 100) % 100
    print("На \(title) потрачено \(rubles) рублей \(kops) копеек")
}
let productList = ["Молоко": (count: 4, price: 69.90),
                   "Мясо": (count: 2, price: 458.67),
                   "Сыр": (count: 1, price: 687.56),
                   "Сметана": (count: 3, price: 87.90)]
func prodListDescription(list: [String: (Int, Double)]) {
    for (key, value) in list {
        prodDescript(value.0, value.1, key)
    }
}
prodListDescription(list: productList)


let age = 43 // года, 12 - лет, 21 - год
let aboutAge = {(age: Int) -> String in
    switch age {
    case let age where age % 10 == 1 && age / 10 % 10 != 1:
        return "Мне \(age) лет"
    case let age where 2...4 ~= age % 10 && age / 10 % 10 != 1:
        return "Мне \(age) года"
    default:
        return "Мне \(age) лет"
    }
}
aboutAge(age)

// функция принимает в себя прямоугольник
func rectangle(length: Double, width: Double, action: (Double, Double) -> Double) -> Double {
    return action(length, width)
}
let square = {(h: Double, w: Double) -> Double in h * w}
let perimeter = {(h: Double, w: Double) -> Double in h * 2 + w * 2}
rectangle(length: 4, width: 5, action: perimeter)
rectangle(length: 4, width: 5) { h, w in
    if h > w { return h / w } else { return w / h }
} // отношение большей стороны к меньшей

var users = ["Антошка", "Галя", "Виктория", "Аркадий"]
func greeting(name: String?) {
    let userGreeting = { (name: String) in
        print("Привет \(name)! Мы рады, что вы присоединились к нам!")
    }
    let oldUserGreeting = { (name: String) in
        print("Привет, \(name)! Давно не вилились!")
    }
    let guestGreeting = {
        print("Привет, Гость!")
    }
    if let name = name {
        if users.contains(name) {
            oldUserGreeting(name)
        } else {
            guestGreeting()
        }
    } else {
        guestGreeting()
    }
}

//1.
/*var dict = ["Vasya": 1144, "Misha": 7654, "Nikolay": 5555]
let compl = {(login: String) -> Void in
        print("Открыается экран каталога")
    }
func authorization(login: String, pin: Int, completion: (String) -> Void) {
    for (name, pass) in dict {
        if pass == dict[name] && pin == pass {
            print("Открывается экран профиля")
        } else {
            print("Открывается экран каталога")
        }
}

let firstClos = {(a: Int, b: Int) -> Bool in a % b == 0 }
let secClos = {(a: Int, b: Int) -> Bool in
    var cond = false
    for i in 2... {
        if a % i == 0 && b % i == 0 && i != a && i != b {
            cond = true
        } else {
            cond = false
        }
    }
    return cond
}
let thirdClos = {(a: Int, b: Int) -> Bool in a + b % 2 == 0 }
func check(number1: Int, number2: Int, cheking: (Int, Int) -> Bool) -> Bool {
    cheking(number1, number2)
}

let superDelitel = {
    for i in 1000...9999  {
        if i % 133 == 124 && i % 134 == 111 {
             print(i)
        }
    }
}
superDelitel()

let word1 = "Vlad"
let word2 = "Vladislav"
var charArray = [Character]()
var name: String = ""
var condition = false
func words(word1: String, word2: String) {
    for char in word1 {
        if word2.contains(char) {
            print("Буква \(char) есть в слове \(word1) и слове \(word2)")
            charArray.append(char)
        }
    }
    for char in charArray {
        name += String(char)
    }
    if name == word1 {
        condition = true
    }
}
words(word1: word1, word2: word2)
name
// ООП
class Car {
    // Свойства
    var title: String
    var color: String
    var power: Int
    var driver: Driver?
    // Инициализаторы
    init(brend: String, model: String, color: String, power: Int) {
        self.title = "\(brend) \(model)"
        self.color = color
        self.power = power
    }
    // Методы
    func display() {
        print("К Вам подъезжает \(self.color) \(self.title)")
    }
    func go() {
        guard let driver = driver else {
            print("Машина без водителя не может ехать пока еще")
            return
        }
        print("\(driver.name) едет на машине \(title)")
    }
}
let car = Car(brend: "Audi", model: "A4", color: "Белый", power: 210)
let bmw = Car(brend: "BMW", model: "X3", color: "Черный", power: 240)
car.title
bmw.title
car.display()
bmw.display()
//bmw.driver = "Vasya"
//bmw.driver
//car.driver

class Driver {
    let name: String
    var categories: [Character]
    var age: Int
    init(name: String, categories: [Character], age: Int) {
        self.name = name
        self.age = age
        self.categories = categories
    }
}
let vasya = Driver(name: "Вася Утин", categories:["A", "B", "C"], age: 26)
let masha = Driver(name: "Маша Курочкина", categories: ["B"], age: 31)
bmw.driver = vasya
car.driver = masha
bmw.driver?.name
car.driver?.categories
let cars = [bmw, car]
for car in cars {
    car.go()
}
bmw.driver = nil
bmw.go()
// Составить описание класса прямоугольников со сторонами, параллельными осям координат. Предусмотреть возможность перемещения треугольников на плоскости, изменения размеров
class Rectangle {
    var originX: Int
    var originY: Int
    var lenght: Int
    var width: Int
    
    init(x: Int, y: Int, l: Int, w: Int) {
        self.originX = x
        self.originY = y
        self.lenght = l
        self.width = w
    }
    func move(x: Int, y: Int) {
        originX += x
        originY += y
    }
    func changeWidth(new width: Int) {
        self.width = width
    }
    func changeLenght(new lenght: Int) {
        self.lenght = lenght
    }
    func getPoints() ->[(x: Int, y: Int)] {
        var points: [(x: Int, y: Int)] = [(originX, originY)]
        let topLeft = (x: originX, y: originY + width)
        let bottomRight = (x: originX + lenght, y: originY)
        let topRight = (x: originX + lenght, y: originY + width)
        points.append(topLeft)
        points.append(bottomRight)
        points.append(topRight)
        return points
    }
}
let rect = Rectangle(x: 2, y: 4, l: 12, w: 8)
rect.getPoints()
// Разработать систему ж/д кассы. Пассажир который может делать заявку на станцию назначения, время и дату поездки. Система регистрирует Заявку и осуществляет поиск соответствующего Поезда. Пассажир делает выбор Поезда и получает Счет на оплату. Кассир вводит номера Поездов, промежуточные и конечные станции, цены.
class Train {
    let number: Int
    var stations = [(String, Int)]()
    var beginPoint = ""
    var endPoint = [(String, Int)]()
    
    init(number: Int, stations: [(String, Int)], begin: String, end: (String, Int)) {
        self.number = number
        self.stations = stations
        self.beginPoint = begin
        self.endPoint = end
    }
}
class Kassir {
    var trains: [Train] = []
    func addTrain(number: Int, stations: [(String, Int)], begin: String, end: (String, Int)) {
        let train = Train(number: number, stations: stations, begin: begin, end: end)
        self.trains.append(train)
    }
}
class Passanger {
    var currenPlace: String
    var kassir = Kassir()
    init(currentPlace: String) {
        self.currenPlace = currentPlace
    }
    func buyTicket(targetPlace: String, index: Int) -> Int {
        var price = 0
        let train = kassir.trains[index]
        if targetPlace == train.endPoint.0 {
            for station in train.stations {
                if station.0 != targetPlace {
                    price += station.1
                } else {
                    price += station.1
                    break
                }
            }
            price += train.endPoint.1
            return price
        } else {
            for station in train.stations {
                if station.0 != targetPlace {
                    price += station.1
                } else {
                    price += station.1
                    return price
                }
            }
            return 0
    }
}
let kassir = Kassir()
kassir.addTrain(number: 56748, stations: [("Рижская", 40), ("Останкино", 30), ("Петровско-Разумовская", 20), ("Лихоборы", 20)], begin: "Комсомольская", end: ("Химки", 50))
let passenger = Passanger (currentPlace: "Комсомольская")
passenger.kassir = kassir
*/
// cвойства методы

class Programmer {
    var exp: Int
    let spec: String
    var qual: String {
        switch exp {
        case 0..<1: return "Intern"
        case 1..<3: return "Junior"
        case 3..<5: return "Middle"
        case 5...: return "Senior"
        default: return "Intern"
        }
    }
    init(exp: Int, spec: String) {
        self.exp = exp
        self.spec = spec
    }
}
let iOSDev = Programmer(exp: 2, spec: "iOS")
iOSDev.exp
iOSDev.qual
iOSDev.exp += 2
iOSDev.qual
// манагер по продажам

class SalesManager {
    var salaryBase: Int = 25000
    var callCount = 0
    var salesAmount = 0
    var sanctions = 0
    var motivatin: Int {
        let motivContion = callCount > 130 && salesAmount > 300_000
        guard motivContion else { return 0 }
        let motiv = callCount * 30 + salesAmount * 12 / 100
        return motiv
    }
    var salary: Int {
        let sum =  salaryBase + motivatin - sanctions
        guard sum > salaryBase / 2 else {
            return salaryBase / 2
        }
        return sum
    }
    func addCalls(count: Int) {
        self.callCount += count
    }
    func sale(amount: Int) {
        self.salesAmount += amount
    }
    func kosyak(amount: Int) {
        self.sanctions += amount
    }
}

let salesManager = SalesManager()
salesManager.salary
salesManager.addCalls(count: 120)
salesManager.sale(amount: 500000)
salesManager.salary
salesManager.addCalls(count: 40)
salesManager.salary
salesManager.kosyak(amount: 30000)
salesManager.salary
salesManager.kosyak(amount: 50000)
salesManager.salary


class BankClient {
    var name: String
    var balance: Int = 0
    var mail: String
    var telNumber: Int
    init(name: String, mail: String, tel: Int) {
        self.name = name
        self.mail = mail
        self.telNumber = tel
    }
    convenience init(name: String, surname: String, middleName: String) {
    }
    convenience init(type: String) {
        
    }
}
*/
// ООП Принципы. Наследование
class Plants {
    let title: String
    let type: String
    let isPlant: Bool
    init(title: String, type: String, isPlant: Bool) {
        self.title = title
        self.isPlant = isPlant
        self.type = type
    }
    func description() {
        let plant = isPlant ? "Лиственный" : "Хвойный"
        print("\(plant) \(type) \(title)")
    }
}


class Wood: Plants {
    var diameter: Double
    init(title: String, isPlant: Bool, diameter: Double) {
        self.diameter = diameter
        super.init(title: title, type: "Дерево", isPlant: isPlant)
    }
}
let kedr = Wood(title: "Кедр", isPlant: false, diameter: 20.5)
let beard = Wood(title: "Береза", isPlant: true, diameter: 16.8)
class Scrub: Plants {
    let height: Int
    init(height: Int, title: String, isPlant: Bool) {
    self.height = height
    super.init(title: title, type: "Кустарник", isPlant: isPlant)
    }
}
let malina = Scrub(height: 180, title: "Малина", isPlant: true)
class Grass: Plants {
    let yearType: Bool
    init(title: String, yearType: Bool) {
    self.yearType = yearType
    super.init(title: title, type: "Трава", isPlant: true)
    }
}
final class Paporotnik: Grass {
    let countOfPlants: Int
    init(countOfPlants: Int) {
        self.countOfPlants = countOfPlants
        super.init(title: "Папоротник", yearType: true)
    }
}
let podorozhnik = Grass(title: "Папоротник", yearType: true)
let paporotnik = Paporotnik(countOfPlants: 14)
var myPlants: [Plants] = [kedr, beard, podorozhnik, malina, paporotnik]
for plant in myPlants {
    plant.description()
}
// is проверка типов
let plants = myPlants[2]
plants is Grass
plants is Plants

// as? as! приведение типов
let pod = plants as! Grass
pod.yearType

if let pod = plants as? Wood {
    print(pod.diameter)
} else {
    print("Это не дерево")
}
class Vehicle {
    let title: String
    var about: String {
        return "Название: \(title)"
    }
    init(title: String) {
        self.title = title
    }
    func go() {
        print("ТС \(title) движется")
    }
}
class Car: Vehicle {
    let color: String
    let power: Int
    override var about: String {
        "Название: \(title)\nЦвет:\(color)\nМощность:\(power)"
    }
    init(color: String, power: Int, title: String) {
        self.power = power
        self.color = color
        super.init(title: title)
    }
    override func go() {
        print("Автомобиль \(color) \(title) едет")
    }
}
let venik = Vehicle(title: "Nimbus 2000")
let audi = Car(color: "Белый", power: 220, title: "Audi")
print(venik.about)
print(audi.about)
audi.go()
venik.go()
//Создать класс Самолет, который наследник ТС. Новые свойства - авиакомпания, аэропорт отправления, аэропорт назначения, метод перелет пишет информацию о перелете и переназначает аэропорт направления на тот куда он прибудет, а аэропорт назначения делает nil. Переопределить метод go()
class Plain: Vehicle {
    let aviaComp: String
    var startPoint: String?
    var endPoint: String?
    init(aviaComp: String, startPoint: String, endPoint: String) {
        self.aviaComp = aviaComp
        self.startPoint = startPoint
        self.endPoint = endPoint
        super.init(title: "Самолет")
    }
    func flight() {
        print("Самолет авиакомпании \(aviaComp) совершает полет из города \(startPoint!) в город \(endPoint!)")
        startPoint = endPoint
        endPoint = nil
    }
    override func go() {
        print("\(title) движется")
    }
}
let airbus = Plain(aviaComp: "Аэрофлот", startPoint: "Москва", endPoint: "Калининград")
airbus.flight()
airbus.endPoint
airbus.go()


//Инкапсуляция
class Goods {
    let title: String
    private(set) var price: Int // (set) к ценнику можно обращаться но устанавливать можно только методами класса
    init(title: String, price: Int) {
        self.title = title
        self.price = price
    }
    func changePrice(newValue: Int, token: Int) {
        let trueToken = 4589
        if token == trueToken && newValue > 0 {
            self.price = newValue
        }
    }
}
class Wallet {
    private(set) var balance: Int
    init(balance: Int) {
        self.balance = balance
    }
    
    func addCash(_ amount: Int) {
        self.balance += amount
    }
    func pay(_ amount: Int) {
        guard balance >= amount else {
            print("У Вас нет столько денег")
            return
        }
        self.balance -= amount
        print("Вы достали из кошелька \(amount) рублей")
    }
}
class Person {
    let name: String
    private var age: Int
    private(set) var wallet: Wallet = Wallet(balance: 8000)
    var goods: [Goods] = []
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func getAge() -> Int { age }
    func birthDay() {
        self.age += 1
    }
    func getSalary(_ amount: Int) {
        self.wallet.addCash(amount)
        print("Теперь в кошельке \(self.wallet.balance) рублей")
    }
    func buy(goods: Goods) {
        guard pay(amount: goods.price) else {
            print("Покупка не совершена")
            return
        }
        getGoods(goods)
        print("Товар приобретен!")
    }
    private func pay(amount: Int) -> Bool {
        guard self.wallet.balance >= amount else {
            print("Платеж не прошел! Недостаточно средств")
            return false
        }
        self.wallet.pay(amount)
        return true
    }
    private func getGoods(_ goods: Goods) {
        self.goods.append(goods)
    }
}
let person = Person(name: "Аркадий", age: 35)
person.wallet.balance
let xiaomi = Goods(title: "Mi8", price: 6500)
let banana = Goods(title: "Бананы", price: 130)
let earPods = Goods(title: "Apple EarPods", price: 2500)
person.buy(goods: xiaomi)
person.buy(goods: banana)
person.buy(goods: earPods)
person.getSalary(30000)
person.buy(goods: earPods)
person.wallet.balance

// Синглтон приватизация инициализатора
class Chumadan {
   static let shared = Chumadan()
    private init() { }
    var clothes: [String] = []
    
}
class Home {
    var chumadan = Chumadan.shared
    func addClothes(_ clothes: String) {
        chumadan.clothes.append(clothes)
    }
}
class Hotel {
    var chumadan = Chumadan.shared
    func retrive() {
        for cloth in chumadan.clothes {
            print(cloth)
        }
        print("ОТЕЛЬ. Всего вещей: \(chumadan.clothes.count)")
    }
}
let home = Home()
home.addClothes("Носки")
home.addClothes("Шорты")
home.addClothes("Рубашка")
home.addClothes("Очки")
home.chumadan.clothes.count
let hotel = Hotel()
hotel.retrive()

class Body {
    var massa: Double
    var density: Double
    
    var volume: Double {
        massa / density
    }
    init (massa: Double, density: Double) {
        self.massa = massa
        self.density = density
    }
}
class Sphere: Body {
    let radius: Double
    override var volume: Double {
        4 * Double.pi * radius * radius * radius / 3
    }
    init(radius: Double, density: Double) {
        self.radius = radius
        super.init(massa: 0, density: density)
        super.massa = volume * density
    }
}
let sphere = Sphere(radius: 4, density: 920)
sphere.volume
sphere.massa

class Cube: Body {
    let lenght: Double
    override var volume: Double {
        lenght * lenght * lenght
    }
    init(lenght: Double, density: Double) {
        self.lenght = lenght
        super.init(massa: 0, density: density)
        super.massa = volume * density
    }
}
let cube = Cube(lenght: 4, density: 920)
cube.volume
cube.massa

// перегрузка методов или инициализаторов. Когда называются одинаково но отличаются по реализации
class User {
    let login: String
    let pin: Int
    let appleToken: String = "sfsgnangnsgniwuifg w  nwinnwgn"
    let faceIDToken: String = "bla bla bla"
    init(login: String, pin: Int) {
        self.login = login
        self.pin = pin
    }
    func auth(login: String, pin: Int) {
        print("Авторизация выполнена через Логин: \(login) и пароль")
    }
    func auth(apple: String) {
        print("Аторизиция выполнена через AppleToken \(apple)")
    }
    func auth(faceID: String) {
        print("Авторизация выполнена через FaceID")
    }
    func getValue() -> String {
        return self.appleToken
    }
    func getValue(login: String) -> Int? {
        if self.login == login {
            return self.pin
        } else {
            return nil
    }
    
    }
}

let vasya = User(login: "Vasya", pin: 4567).getValue()


class Sportsman {
    func train() {
        print("Я тренируюсь")
    }
}
class Boxer: Sportsman {
    let weightCategory: String
    init(weightCategory: String) {
        self.weightCategory = weightCategory
    }
    override func train() {
        print("Я занимаюсь боксом")
    }
}

class Runner: Sportsman {
    var todayDist: Int
    init(todayDist: Int) {
        self.todayDist = todayDist
    }
    override func train() {
        print("Я занимаюсь бегом")
    }
}
let bolt = Runner(todayDist: 10000)
bolt.train()
let tyson = Boxer(weightCategory: "Тяжелая весовая категория")
tyson.train()


