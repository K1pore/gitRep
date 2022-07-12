import UIKit

var greeting = "Hello, playground"

func add(a: Int, b: Int) -> Int {
    return a + b
}

//var addVar: (Int, Int) -> Int = { a, b in
//    return a + b
//}
// клоужер ниже
var addVar: (Int, Int) -> Int = { $0 + $1 }

add(a: 3, b: 5)

addVar(5,3)

// функция вышего порядка
func myFunc(a: Int, b: Int, matchFunc: (Int, Int) -> Int) {
    let result = matchFunc(a,b)
    print(result)
}


myFunc(a: 5, b: 3, matchFunc: { $0 - $1 })
myFunc(a: 5, b: 3) {a,b in
    //someCode
    //someCode
    //someCode
    return a + b
}
func autoClouserFunc(isOk: Bool, clouser: () -> Void) {
    if isOk {
        clouser()
    } else {
        print("sorry")
    }
}
autoClouserFunc(isOk: false, clouser: { print("my clouse") })
