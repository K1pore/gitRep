import UIKit

var greeting = "Hello, playground"
/*
 Домашнее задание
 Формат файла ДР: «1l_ФИ.playground»
 1. Решить квадратное уравнение.
 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
 3. *Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через                             5 лет.

 Общая формула: доход по вкладу = сумма вклада / 100% * % ставку / количество дней в году * количество дней действия вклада.
 */

//class bank {
//    var integerValue: Int = 0
//
//    func vlad(precentYear: Double, sum: Double, daysInYear: Double) -> Double {
//        Double(integerValue) = (sum / 100) * precentYear / daysInYear
//    }
//}

var integerValuea: Int = 0
func vklad(procent precentYear: Double, sum: Double, days daysInYear: Double) -> String {
  let result = (sum / 100) * precentYear / 365 * daysInYear
    return "Сумма через 5 лет \(result) монет"

}

vklad(procent: 12, sum: 1000, days: 1825)
