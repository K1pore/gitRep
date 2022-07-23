import UIKit

import Foundation

struct Numbers {
    var array = [Int]()
    // subscript - может быть любого типа
    subscript(index: Int) -> Int {
        get {
            return array[index]
        }
        
        set (new) {
            array[index] = new
        }
    }
}
var elements = Numbers(array: [0,1,2,3,4,5])
elements[0] = 32
elements[0]
elements.array
elements.array[0]

struct Multyplier {
    var multyplier: Int
    subscript(number: Int) -> Int {
        return number * multyplier
    }
}
var sevenTimes = Multyplier(multyplier: 7)
sevenTimes[1]
sevenTimes[2]
sevenTimes[3]
sevenTimes[5]





// задача на собесе "Сможете ли вы сделать список"
class List {
    //указатель на вершину списка
    var head: Node?
    var lenght: Int {
        var count = 0
        guard var node = head else {
            return 0
        }
        count += 1
        while node.next != nil {
            node = node.next!
            count += 1
        }
        return count
    }
    
    subscript(index: Int) -> Node {
        guard var currentNode = head else { fatalError("index out of range")}
        for _ in 0..<index {
            if currentNode.next != nil {
                currentNode = currentNode.next!
            } else {
                fatalError("index out of range")
            }
        }
        return currentNode
    }
    
    func add(node: Node) {
        if head == nil {
            head = node
            return
        }
        var currentNote = head
        while currentNote?.next != nil {
            currentNote = currentNote?.next
        }
        currentNote?.next = node
    }
    
    func removeLast() -> Node {
        var node = head
        var previosNode = head
        
        while node?.name != nil {
            previosNode = node
            node = node?.next
        }
        previosNode?.next = nil
            return node!
    }
}

class Node {
    var name: String
    var next: Node?
    
    init(name: String, next: Node) {
        self.name = name
        self.next = next
    }
    init(name: String) {
        self.name = name
        self.next = nil
    }
}


let sam = Node(name: "Sam")
let nameList = List()
nameList.lenght

nameList.add(node: sam)
nameList.lenght

let someNode = nameList[0]
someNode.name
