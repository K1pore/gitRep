import UIKit

struct Car {
    var model: String
    var mark: String
    var year: Int{
        
        willSet{
            print("OldValue year -\(self.year)")
            print("NewValue year -\(newValue)")
        }
        
        didSet{
            if self.year < 2000{
                self.year = 2000
            }
            print("CurrentValue year -\(self.year)")
        }
    }
    var fullName: String{
        // если нам нужен сеттер то нужно писать геттер ечли нет то можно обоцтись без геттера
        get{
            return "\(mark) \(model) \(year)"
        }
        set{
            print(newValue)
            let full = newValue.components(separatedBy: " ")
            if full.count > 2{
                self.mark = full[0]
                self.model = full[1]
                if let newYear = Int(full[2]){
                    self.year = newYear

                }
            }
        }
    }
    var price: Int = getPrice()
}
func getPrice() -> Int{
    print("Start")
    
    var i = 0
    while i < 300000 {
        i += 1
    }
    print("Finish")
    return 30000
}

var car = Car(model: "RAW4", mark: "Toyota", year: 2020)

print(car.fullName)
// willSet, didSet. Работают только когда есть изминение в экземпляре
//car.year = 1999
//print(car.fullName)
//car.fullName = "Toyota Corolla 2010"
//print(car.fullName)

