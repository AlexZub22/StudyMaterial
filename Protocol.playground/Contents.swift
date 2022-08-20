import Cocoa
/*
//Протоколы
protocol FullyNamed {
    var fullName: String { get } // требуется реализовать только геттер
}
protocol Accountable {
    var accountNumber: Int { get }
}
protocol Human {
    var age: Int { get }
    var speciality: String? { get }
}
struct Person: FullyNamed, Accountable, Human {
    var age: Int
    var speciality: String?
    var accountNumber: Int
    let name: String
    let lastName: String
    var fullName: String {
        return name + " " + lastName
    }
    
}

class Company: FullyNamed, Accountable {
    var accountNumber: Int
    let prefix: String
    let title: String
    
    var fullName: String {
        return prefix + "" + title
    }
    init (prefix: String, title: String, accountNumber: Int) {
        self.prefix = prefix
        self.title = title
        self.accountNumber = accountNumber
    }
}

let vasya = Person(age: 30, accountNumber: 4857282050297590275, name: "Вася", lastName: "Петров")
let olga = Person(age: 23, accountNumber: 4357352050637577275, name: "Ольга", lastName: "Сидорова")
let mtz = Company(prefix: "ООО", title: "МТЗ", accountNumber: 4377892050637545982)
let stels = Company(prefix: "ООО", title: "Стелс", accountNumber: 4379158571295768183)
var shopClients: [Accountable] = [vasya, olga, mtz, stels]
var workers: [Human & FullyNamed] = [vasya, olga] //композиция протоколов через амперсанд
var bankClients: [FullyNamed & Accountable] = [vasya, olga, mtz, stels]


protocol Location {
    var lon: Double { get }
    var lat: Double { get }
}
protocol Titled {
    var title: String { get }
}
protocol Placed {
    var placesCount: Int { get }
}
struct Club: Location, Titled, Placed {
    var lon: Double
    var lat: Double
    var title: String
    var placesCount: Int
}
struct Flat: Location {
    var lon: Double
    var lat: Double
}
struct Barbershop: Location, Titled {
    var lon: Double
    var lat: Double
    var title: String
}
struct Stadium: Location, Titled, Placed {
    let sportTitle: String
    var lon: Double
    var lat: Double
    var title: String
    var placesCount: Int
}
struct Magazine: Titled {
    var title: String
}
struct Concert {
    let band: String
    let genre: String
    let place: Location & Titled & Placed
}
let b1 = Club(lon: 45.612626, lat: 56.152525, title: "81", placesCount: 500)
let luzha = Stadium(sportTitle: "Football", lon: 45.897976, lat: 57.7575434, title: "Лужники", placesCount: 4500)
let maxim = Magazine(title: "Maxim")
let blink182 = Concert(band: "Blink 182", genre: "Punk-Rock", place: luzha)



protocol Teacher {
    var speciality: String { get }
    func teach(theme: String)
    func homeworkControl(lesson: Int) -> Int
}
protocol Developer {
    var speciality: String { get }
    var xp: Int { get }
}
class TeacherInSpecialist: Developer, Teacher {
    var speciality: String
    var xp: Int
    init(speciality: String, xp: Int) {
        self.speciality = speciality
        self.xp = xp
    }
    func teach(theme: String) {
        print("Веду урок по теме \(theme)!")
    }
    func homeworkControl(lesson: Int) -> Int {
        print("Посмотрим, чё они там ")
        let notes = [1, 2, 3, 4 ,5]
        let note = notes.randomElement()
        return note!
    }
}
*/
protocol Printable {
    func printTitle()
}
class Book: Printable {
    let title: String
    init(title: String) {
        self.title = title
    }
    func printTitle() {
        print("Данная книга называется \(title)")
    }
}
struct Magazine: Printable {
    var title: String
    func printTitle() {
        print("Данный журнал называется \(title)")
    }
}
let mensHealth = Magazine(title: "Mens Health")
let lordOfTheRings = Book(title: "Властелин колец")
let playboy = Magazine(title: "Playboy")
let bible = Book(title: "Библия")

var papers: [Printable] = [mensHealth, lordOfTheRings, playboy, bible]
for paper in papers {
    paper.printTitle()
}
func booksAndMags(somePaper: [Printable]) -> ([Book], [Magazine]) {
    var books: [Book] = []
    var mags: [Magazine] = []
    for paper in somePaper {
        if let book = paper as? Book {
            books.append(book)
        } else if let mag = paper as? Magazine {
            mags.append(mag)
        }
    }
    return (books, mags)
}
booksAndMags(somePaper: papers)



protocol MusicInstr {
    var key: String? { get }
    func play()
}
class Guitar: MusicInstr {
    var key: String? = "E"
    var numberOfStrings: Int
    init(nuberOfStings: Int) {
        self.numberOfStrings = nuberOfStings
    }
    func play() {
        print("Гитара с количеством струн \(numberOfStrings) и тональностью \(key!)) играет.")
    }
}
class Drum: MusicInstr {
    var key: String? = nil
    var size: Int
    init(size: Int) {
        self.size = size
    }
    func play() {
        print("Барабан размером \(size) играет.")
    }
}
class Pipe: MusicInstr {
    var key: String? = "C"
    var diametr: Int
    init(diametr: Int) {
        self.diametr = diametr
    }
    func play() {
        print("Труба тональностью \(key!) и диаметром \(diametr) играет.")
    }
}

let fender6 = Guitar(nuberOfStings: 6)
let ibanez7 = Guitar(nuberOfStings: 7)
let yamaha = Pipe(diametr: 15)
let ddrum = Drum(size: 50)
let arrayOfInstr: [MusicInstr] = [fender6, ibanez7, yamaha, ddrum]
for instr in arrayOfInstr {
    instr.play()
}
// print("Бла бла бла \"\(title)\"") экранирование кавычек



