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



enum EnumEyeKris: Double {
    case eyeLeft = 0.001
    case eyeRight = 0.0
}
let eyeEnum = EnumEyeKris.eyeLeft
eyeEnum.rawValue

/*
6. Напишите пример класса автомобиля (какие поля ему нужны — на ваше усмотрение) с конструктором, в котором часть полей будет иметь значение по умолчанию.
*/

class Car {
    var fuel: Int = Int()
    var oil: Int = Int()
    let speed: Int = 120
    
}

/*
 7. Напишите класс для калькулятора с функциями для сложения, вычитания, умножения и деления цифр, которые в нём хранятся как свойства.
 */
class Calculated {
    
    func plusAdd(_ add: Double, _ b: Double) -> Double {
        return add + b
    }
    func subtract(_ subtract: Double, _ b: Double) -> Double {
        return subtract - b
    }
    func multiply(_ multiply: Double, _ b: Double) -> Double {
        return multiply * b
    }
    func divide(_ divide: Double, _ b: Double) -> Double {
        return divide / b
    }
}


//Представим, что вы создаете RPG-игру. Напишите структуру для хранения координаты игрока, enum для направлений (восток, север, запад, юг) и функцию, которая берёт к себе на вход позицию и направление и возвращает новую координату (после того как игрок походил на одну клетку в соответствующую сторону). Вызовите эту функцию несколько раз, «походив» своим игроком.


struct CoordinatePlayer {
    var x = 0, y = 0
    
    init(x:Int, y: Int) {
        self.x = y
        self.y = y
    }
}
enum Imperfective: String {
    case east = "Восток"
    case north = "Север"
    case west = "Запад"
    case south = "Юг"
}

func moveFoward (postion: CoordinatePlayer, direction: Imperfective) -> CoordinatePlayer {
    var newX = postion.x
    var newY = postion.y
    switch direction {
        
    case Imperfective.east:
        newY += 1
    case Imperfective.south:
        newX -= 1
    case Imperfective.north:
        newY -= 1
    case Imperfective.west:
        newX += 1
    }
    return CoordinatePlayer(x:newX, y:newY)
}

var firstStep = CoordinatePlayer(x:0, y:0)
var firsDir = Imperfective.west
var secondstep = moveFoward(postion: firstStep, direction: firsDir)
var secondir = Imperfective.north
var thirdstep = moveFoward(postion: secondstep, direction: secondir)

// Структуры нужны когда не нужно наследование и нужно хранение значений, а не ссылка
