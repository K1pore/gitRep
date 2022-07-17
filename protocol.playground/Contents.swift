import UIKit

protocol Moveable {
    var speed: Int {get}
    func move()
}

class Human: Moveable {
    var speed: Int = 3
    var firstName: String = ""
    
    func move() {
        print("Человек идет со скоростью \(speed)")
    }
    var fitstName: String
    init(firstName: String) {
        self.fitstName = firstName
    }
}
struct Car: Moveable {
    var speed: Int = 100
    var mark: String
    
    func move() {
        print("Машина едет со скоростью \(speed)км/ч")
    }
}

struct Cat: Moveable {
    var speed: Int = 20
    var name:String
    
    func move() {
        print("Кошка бежит со скоростью \(speed)")
    }
}
//создаем экземпляры
let human = Human(firstName: "Steaven")
let car = Car(mark: "Tesla")
let cat = Cat(name: "jojo")
//создаем массив экземпляров с типом данных протокола
let objects: [Moveable] = [car,human,cat]
//цикл для проверки
for object in objects {
    object.move()
}
// protocol - это некое расширение свойств, для классов и стркутур

