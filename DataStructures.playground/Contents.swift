import Cocoa
import Foundation

//Структуры данных
//Массив
var array = Array<String>()
//Множество
var set = Set<Int>()
//Словарь (Dictionary, Map)
var dict = Dictionary<Int, Double>()

//Stack
struct Stack<T> {
    private var container = [T]()
    var isEmpty: Bool { container.isEmpty }
    var size: Int { container.count }
    var top: T? { container.last }
    
    mutating func pop() -> T? {
        guard !isEmpty else { return nil }
        return container.removeLast()
    }
    mutating func push(_ element: T) {
        self.container.append(element)
    }
}

var stack = Stack<String>()
stack.isEmpty
stack.size
stack.push("колбаса")
stack.push("сыр")
stack.push("квас")
stack.size
stack.top
let kvas = stack.pop()
let cheese = stack.pop()
stack.size
let wurst = stack.pop()
stack.isEmpty

//Queue - очередь
struct Queue<T> {
    private var container = [T]()
    var isEmpty: Bool { container.isEmpty }
    var size: Int { container.count }
    var head: T? { return container.first }
    var tail: T? { return container.last }
    mutating func enqueue(_ element: T) {
        container.append(element)
    }
    mutating func dequeue() -> T? {
        guard !isEmpty else { return nil }
        return container.removeFirst()
    }
    mutating func enqueue(_ elements: [T]) {
        container += elements
    }
}
struct Car {
    let title: String
    let color: String
}
var queue = Queue<Car>()
queue.enqueue(Car(title: "BMW", color: "Black"))
queue.enqueue([Car(title: "Lada", color: "Баклажа"), Car(title: "Honda", color: "Red")])
queue.isEmpty
queue.size
queue.head?.title
queue.tail?.title
let bmw = queue.dequeue()
bmw?.title
// Deque - двойная очередь
struct Deque<T> {
    private var container = [T]()
    var size: Int { container .count }
    var isEmpty: Bool { container.isEmpty }
    var head: T? { container.first }
    var tail: T? { container.last }
    mutating func addFirst(_ element: T) {
        self.container.insert(element, at: 0)
    }
    mutating func addLast(_ element: T) {
        self.container.append(element)
    }
    mutating func removeFirst() -> T? {
        guard !self.isEmpty else { return nil }
        return container.removeFirst()
    }
    mutating func removeLast() -> T? {
        guard !self.isEmpty else { return nil }
        return container.removeLast()
    }
}
var deque = Deque<Int>()
deque.addFirst(12)
deque.addLast(35)
deque.addFirst(4)
deque.addLast(79)
deque.addFirst(91)
deque.addLast(45)
deque.isEmpty
deque.size
deque.removeLast()
deque.removeFirst()
deque.isEmpty
deque.size

//Задача: Предусмотреть в очереди исключение, чтобы добавлять ветеранов и многодетных в начало очереди. У Person сделать массив удостоверений. Массив будет передаваться в очередь, в начало добавляются с удостоверением "Ветеран" или "Многодетный". Не более 3 исключений одновременно
enum Certificate {
    case veteran, mnogodetniy, rabochiiMesyaca, veteranChechni
    var description: String {
        switch self {
        case .veteran:
            return "Ветеран"
        case .mnogodetniy:
            return "Многодетный"
        case .rabochiiMesyaca:
            return "Рабочий месяца"
        case .veteranChechni:
            return "Ветеран чеченской войны"
        }
    }
    
}
class Person {
    var certificates =  [Certificate]()
    var title: String
    init(title: String, certificate: [Certificate]) {
        self.title = title
        self.certificates = certificate
    }
}
struct QueueInHospital {
    private var container = [Person]()
    var isEmpty: Bool { container.isEmpty }
    var size: Int { container.count }
    var head: Person? { return container.first }
    var tail: Person? { return container.last }
    mutating func enqueue(pers: Person) -> [Person] {
        if pers.certificates.contains(Certificate.mnogodetniy) || pers.certificates.contains(Certificate.veteran) {
            container.insert(pers, at: 0)
        } else {
            container.append(pers)
        }
        return container
    }
}
let masha = Person(title: "Мария", certificate: [.mnogodetniy, .rabochiiMesyaca])
let vasiliy = Person(title: "Василий", certificate: [.veteran, .veteranChechni])
let alexey = Person(title: "Алексей", certificate: [.veteranChechni])
let olga = Person(title: "Ольга", certificate: [.mnogodetniy])
let viktor = Person(title: "Виктор", certificate: [])
let elena = Person(title: "Елена", certificate: [])
let vadim = Person(title: "Вадим", certificate: [])
let sveta = Person(title: "Светлана", certificate: [])
let georgy = Person(title: "Георгий", certificate: [.veteran])
var queueInHospital = QueueInHospital()
queueInHospital
queueInHospital.enqueue(pers: elena)
queueInHospital.enqueue(pers: masha)
queueInHospital.enqueue(pers: alexey)
queueInHospital.enqueue(pers: olga)
queueInHospital.enqueue(pers: vasiliy)
queueInHospital.enqueue(pers: vadim)
queueInHospital.enqueue(pers: sveta)
queueInHospital.enqueue(pers: georgy)
queueInHospital.head
queueInHospital.tail
//LinkedList - связный список

//Массив:
//Чтение из массива:
//[element0, e1, e2, e3]
//      0     1   2   3
//Добавление в массив:
//1. Создается новый массив с последним пустым элементом.
//2. В вновь созданный массив добавляется новый элемент.
//3. Вновь созданный массив пересохраняется в переменную исходного массива.
//4. Вновь созданный массив удаляется.

//SingleLinkedList:
//1 -> 2 -> 3 -> 4 -> nil
//1 - head
//tail - next = nil
//DoubleLinkedList:
//nil <-> 1 <-> 2 <-> 3 <-> 4 <-> nil
//head - previos = nil
//tail - last = nil
//Узел связанного списка
class Node<Element> {
    var value: Element //Значения узла
    var next: Node? // Следующий элемент
    weak var previus: Node? //слабая ссылка. Предыдущий элемент
    
    init(value: Element) {
        self.value = value
    }
}
//Связанный список
class LinkedList<Element> {
    private var head: Node<Element>? //Голова
    private var tail: Node<Element>? //Хвост
    
    var isEmpty: Bool { head == nil } //Пусто/не пусто
    var first: Node<Element>? { head } //Первый элемент
    var last: Node<Element>? { tail } //Последний элемент
    //Метод добавления в связанный список
    func append(value: Element) {
        let newNode = Node(value: value)
        
        if let tailNode = tail {
            newNode.previus = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        
        tail = newNode
    }
    //Получение узла по индексу
    func nodeAt(index: Int) -> Node<Element>? {
        guard index >= 0 else { return nil }
        var node = head
        var i = index
        while node != nil {
            if i == 0 { return node }
            i -= 1
            node = node!.next
        }
        return nil
    }
    //Получение значения по индексу
    func valueAt(index: Int) -> Element? {
        guard index >= 0 else { return nil }
        var node = head
        var i = index
        while node != nil {
            if i == 0 { return node!.value }
            i -= 1
            node = node!.next
        }
        return nil
    }
    //Метод полной очистки
    func removeAll() {
        head = nil
        tail = nil
    }
    /*func remove(node: Node<Element>) -> Element {
        let prev = node.previus //Попугай
        let next = node.next//nil
        if let prev = prev {
            prev.next = next//Попугай.next = nil
        } else {
            head = next
        }
        next?.previus = prev
        
        if next == nil {
            tail = prev //tail = Попугай
        }
        node.previus = nil
        node.next = nil
        
        return node.value
    }*/
    //Метод удаления по индексу
    func removeByIndex(index: Int) -> Element? {
        guard let node = nodeAt(index: index) else  { return nil }
        
        let prev = node.previus //Попугай
        let next = node.next  //nil
        
        if let prev = prev {
            prev.next = next //Попугай.next = nil
        } else {
            head = next
        }
        
        next?.previus = prev
        
        if next == nil {
            tail = prev  //tail = Попугай
        }
        
        node.previus = nil
        node.next = nil
        
        return node.value
    }
}

extension LinkedList: CustomStringConvertible {
    //Свойство для печати связанного списка
    var description: String {
        var text = "["
        var node = head
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += " <-> " }
        }
        text += "]"
        
        return text
    }
}

var animalsLinkedList = LinkedList<String>()
animalsLinkedList.append(value: "Собака")
animalsLinkedList.append(value: "Кот")
animalsLinkedList.append(value: "Попугай")
animalsLinkedList.append(value: "Кролик")
print(animalsLinkedList)
let animalNode = animalsLinkedList.valueAt(index: 1)
animalsLinkedList .valueAt(index: 6)
//animalsLinkedList.removeAll()
print(animalsLinkedList)
//animalsLinkedList.remove(node: Node(value: "Кролик"))
print(animalsLinkedList)

