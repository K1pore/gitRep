import UIKit

var greeting = "Hello, playground"
// enum have value type
// lesson struct
// struct have value type

/*
 1) Cоздайте структуру, описывающую сущность «Пользователь». В ее состав должны входить следюущие элементы:
 — свойства, содержащие имя и фамилию
 — инициализатор, принимающий только имя
 — инициализатор, принимающий имя и фамилию
 — метод, возвращающий информационную строку с указание имени и фамилии пользователя
 — методы, изменяющие имя и фамилию
 2) Проверьте созданную структуру
 */

//struct EssenceUser {
//    var name: String
//    var firstName: String
//    init(name: String) {
//        self.name = name
//    }
//    init() {
//        firstName = "Pogudin"
//        name = "kipo"
//    }
//}





// lessont class
// class have refreence type
class Human {
    var height: Double
    var weight: Double
    // computed property
    var iq: Double {
        print("pass iq test")
        return Double.random(in: 0...200)
    }
    
    init(weight: Double, height: Double) {
        self.weight = weight
        self.height = height
    }
    
    func lose(weight: Double) {
        self.weight -= weight
    }
}

var me = Human(weight: 53, height: 3.2)
me.weight
me.height
me.lose(weight: 12)
print(me.lose(weight: 12))
me.iq
