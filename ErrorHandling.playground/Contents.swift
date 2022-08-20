import Cocoa
import Security

// принял Вася -> ВАСЯ

//Имя должно быть не менее 2 символов
//Не более 15 символов
//Должо содержать только буквы

enum NameValidationError: Error {
    case tooShort
    case tooLong
    case invalidChar(Character)
}

func upperCased(name: String) throws -> String {
    guard name.count > 1 else { throw NameValidationError.tooShort }
    guard name.count <= 15 else { throw NameValidationError.tooLong }
    
    for char in name {
        guard char.isLetter else { throw NameValidationError.invalidChar(char) }
    }
    return name.uppercased()
}

//2 do-catch (когда много вариантов причин ошибки)

do {
    let name = try upperCased(name: "Виталя")
    print("ИМЯ: \(name)")
} catch NameValidationError.tooShort {
    print("Имя слишком короткое!")
} catch NameValidationError.tooLong {
    print("Имя слишком длинное!")
} catch NameValidationError.invalidChar(let char) {
    print("\(char) не является буквой")
}

//3 - Конвертация в опционал (если не важна суть ошибки или ошибка очевидна)
let onotoly = try? upperCased(name: "Онотолей")
if let onot = onotoly {
    print(onot)
}
//4 - Утверждение безошибочности (в случае если есть уверенность что ошибки быть не может)
let arkady = try! upperCased(name: "Аркадий")


//--------------------------------------------------------------------------

// Тренажерный зал

struct Person {
    var abonement: Bool?
    let name: String
}

struct FitnessClub {
    let title: String
}

enum Fitness: Error {
    case moreDays
    case notFirstHalf
    case isBeToday
    
}
enum Days: Hashable {
    case monday, tuseday, wednesday, thursday, friday, saturday, sunday
}
enum DayHalf {
    case firstHalf, secondHalf
}
var weekVisit = Set<Days>()
func goToFirness(day: Days, half: DayHalf, person: Person, fitnessClub: FitnessClub) throws {
    guard !weekVisit.contains(day) else { throw Fitness.isBeToday }
    guard weekVisit.count <= 2 else { throw Fitness.moreDays }
    guard half != DayHalf.secondHalf else { throw Fitness.notFirstHalf }
    
    weekVisit.insert(day)
}
let vasya = Person(name: "Вася")
let worldClass = FitnessClub(title: "World Class")

do {
try goToFirness(day: .monday, half: .secondHalf, person: vasya, fitnessClub: worldClass)
    
} catch Fitness.moreDays {
    print("Вы были больше двух дней на этой неделе!")
} catch Fitness.isBeToday {
    print("Вы уже были сегодня!")
} catch Fitness.notFirstHalf {
    print("Вы пришли во второй половине дня!")
}

//Аттракцион
struct Children {
    var age: Int
    var lenght: Int
    let name: String
    var cash: Int
}
enum Attraction: Error {
    case tooSmall
    case tooYoung
    case noMoney
}

func attraction(client: Children) throws {
    print("Пожалуйста оплатите в кассу 300 рублей и проходите на проверку возраста и роста!")
    guard client.cash > 300 else {
        print("Ой у Вас недостаточно денег для прохода на данный аттракцион!")
        throw Attraction.noMoney
    }
    client.cash - 300
    guard client.age > 12 else {
        print("Вы слишком молоды для данного аттракциона! Пройдите в кассу за возвратом денежных средств!")
        client.cash + 300
        throw Attraction.tooYoung
    }
    guard client.lenght > 130 else {
        print("Ваш рост меньше дозволенного для данного аттракциона! Пройдите в кассу за возвратом денежных средств!")
        client.cash + 300
        throw Attraction.tooSmall
    }
    print("Проходите на аттракцион!")
}
let masha = Children(age: 11, lenght: 140, name: "Маша", cash: 500)
do {
try attraction(client: masha)
    
} catch Attraction.noMoney {
    //print("Ой у Вас недостаточно денег для прохода на данный аттракцион!")
} catch Attraction.tooSmall {
    //print("Ваш рост меньше дозволенного для данного аттракциона! Пройдите в кассу за возвратом денежных средств!")
} catch Attraction.tooYoung {
    //print("Вы слишком молоды для данного аттракциона! Пройдите в кассу за возвратом денежных средств!")
}
