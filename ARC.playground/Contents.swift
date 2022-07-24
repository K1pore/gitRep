import UIKit

var integerOne = 10
var integerTwo = integerOne

integerOne = 20

if integerOne == integerTwo {
    print("True")
} else {
    print("false")
}

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    deinit {
        print("the person instance is about to free")
    }
}
let personOne = Person.init(name: "Bob")
personOne.name

let personTwo = personOne

personTwo.name = "Billy"
personOne.name


var referenceOne: Person?
var referenceTwo: Person?

referenceOne = Person(name: "Jack")
referenceTwo = referenceOne


referenceOne = nil
referenceTwo = nil

// Retain Cycle

class Child {
    let name: String
    var toy: Toy?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("the Child inctance is about to free")
    }
}

class Toy {
    let name: String
    weak var owner: Child?
    
    init(name: String) {
        self.name = name
    }

    deinit {
        print("the Toy inctance is about to free")
    }

}

var child: Child?
var toy: Toy?

child = Child(name: "Jane")
toy = Toy(name: "Bear")

child?.toy = toy
toy?.owner = child

child = nil
toy = nil

// weak - импольузуется когда мы имеем дело с опциональными свойствами
// unowned - когда не с опциональными (которые не принемают значение nil
