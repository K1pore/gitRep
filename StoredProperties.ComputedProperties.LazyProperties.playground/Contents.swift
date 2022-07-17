import UIKit
// lesson Урок Swift - 14 - Свойства. Stored Properties, Computed Properties, Lazy Properties. https://www.youtube.com/watch?v=wV8fIYv1wdc&list=PLRJuPW6BGThue5qX6AkARnqc8o_80fbQA&index=14

struct Car {
    static var count:Int = 0
    // в классах метода вместо static надо писать слово class
    // по скольку дочерние классы не смогут переопределять этот метод
    static func getNumberCars() -> Int {
        return Car.count
    }
    
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
lazy var price: Int = getPrice()
    init(mark:String, model: String, year: Int){
        self.mark = mark
        self.model = model
        self.year = year
        Car.count += 1
    }
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

var car = Car(mark: "Toyota", model: "RAW4", year: 2020)
var car2 = Car(mark: "Toyota", model: "Corolla", year: 2020)
var car3 = Car(mark: "Toyota", model: "MARKII", year: 2020)
print(car.fullName)
print(car.price)
print(Car.getNumberCars())
// willSet, didSet. Работают только когда есть изминение в экземпляре
//car.year = 1999
//print(car.fullName)
//car.fullName = "Toyota Corolla 2010"
//print(car.fullName)


