import Cocoa

//ARC

var auditory = true // область видимости

class Student {
    weak var teacher: Teacher?
    init() {
        print("Cтудент создан")
    }
    deinit {
        print("Студент вышел")
    }
}

class Teacher {
    var student: Student?
    init() {
        print("Учитель родился")
    }
    deinit {
        print("Учитель ликвидирован")
    }
}

/* --------------1----------------
if auditory {
    let teacher = Teacher()
    let student = Student()
}
let teacher = Teacher()
let student = Student()
*/


/*---------------2----------------
let teacher: Teacher // объявлен но не проинициализирован

if auditory {
    teacher = Teacher()
    let student = Student()
}
*/

/*---------------3----------------
 Создается цикл сильных ссылок между студентом и учителем
 
if auditory {
    let teacher: Teacher
    teacher = Teacher()
    let student = Student()
    
    teacher.student = student
    student.teacher = teacher
}
*/
/*---------------4----------------
if auditory {
    let teacher: Teacher
    teacher = Teacher()
    let student = Student()
    
    teacher.student = student
    student.teacher = teacher
} // student = nil & teacher = nil
*/

class Person {
    let name: String
    unowned let passport: Passport // weak всегда var и опционал ?
    init(name: String, passport: Passport) {
        self.name = name
        self.passport = passport
        print("Человек родился!")
    }
    deinit {
        print("Человек больше не с нами")
    }
}

class Passport {
    let series: Int
    let number: Int
    var person: Person?
    
    init(series: Int, number: Int) {
        self.series = series
        self.number = number
        print("Пасспорт выдан")
    }
    deinit {
        print("Пасспорт сожжен")
    }
}


//------------------5-----------------------------------------------
if true {
    let passport = Passport(series: 5689, number: 038954)
    passport.person = Person(name: "Jack Daniels", passport: passport)
}


//Телефон, сим карта и жесткий диск в телефоне. Телефон ссылается на жесткий диск и наоборот с помощью unowned. Для симкарты weak. Свойства телефона имя и hdd а у жесткого объем и телефон.

class Smartphone {
    let title: String
    weak var sim: SimCard?
    unowned let hdd: HDD
    
    init(title: String, hdd: HDD) {
        self.title = title
        self.hdd = hdd
    }
    deinit {
        print("Смартфон уничтожен")
    }
}

class SimCard {
    let number: Int
    var phone: Smartphone?
    init(number: Int) {
        self.number = number
        print("Сим карта вставлена")
    }
    deinit {
        print("Сим карта удалена")
    }
}

class HDD {
    let space: String
    var phone: Smartphone?
    init(space: String) {
        self.space = space
    }
    deinit {
        print("Жесткий диск удален из \(phone). Больше он работать не будет")
    }
}

let samsungHdd = HDD(space: "256 GB")
samsungHdd.phone = Smartphone(title: "iPhone 13 Pro Max", hdd: samsungHdd)
let sim = SimCard(number: 89157844223)
samsungHdd.phone?.sim = sim

if true {
    let samsungHdd = HDD(space: "256 GB")
    let phone = Smartphone(title: "Iphone Pro MAX", hdd: samsungHdd)
    let sim = SimCard(number: 89157844223)
    samsungHdd.phone = phone
    phone.sim = sim
    sim.phone = phone
}

//ARC в замыканиях
//Пример:
print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
class Prorab {
    let name: String
    var workers = [Worker]()
    init(name: String) {
        self.name = name
    }
    deinit {
        print("Прораб уволен!")
    }
}

class Worker {
    let name: String
    weak var prorab: Prorab?
    init(name: String, prorab: Prorab?) {
        self.name = name
    }
    deinit {
        print("Работик \(name) депортирован в Киргизию!")
    }
}

if true {
    let prorab = Prorab(name: "Михалыч")
    let ravshan = Worker(name: "Равшан", prorab: prorab)
    let dzumshut = Worker(name: "Джумшут", prorab: prorab)
    prorab.workers = [ravshan, dzumshut]
}

class Pet {
    var name: String = "Шарик"
    var setName: (() -> ())!
    
    lazy var getPetAndName: () -> String = { //[ unowned self ] in /бесхозная ссылка на самозахват замыкания
        return "Собака \(self.name)"
    }
    
    init(name: String) {
        self.setName = { [unowned self] in //захватываем себя как бесхозную ссылку после чего Тузик убежит
            self.name = name
        }
        setName()
    }
    deinit {
        print("\(name) убежал")
    }
}
if true {
    let pet = Pet(name: "Тузик")
    pet.name
    pet.getPetAndName // Когда вызвывается ленивое свойство захватывает само себя и тузик не убегает
}
//Тузик не убежал потому что имя захвачено внутри замыкания которое в init

