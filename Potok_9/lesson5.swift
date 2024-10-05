//
//  lesson5.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 03.10.2024.
//

// Switch-case

// Задание 1
print("Введите номер месяца:")
let numberMotherInput = readLine()
if let number = Int(numberMotherInput ?? "") {
    switch number {
    case 12, 1, 2:
        print("Результат: Зима")
    case 3...5:
        print("Результат: Весна")
    case 6...8:
        print("Результат: Лето")
    case 9...11:
        print("Результат: Осень")
    default:
        print("Некорректный ввод. Пожалуйста, введите число от 1 до 12.")
    }
} else {
    print("Некорректный ввод. Пожалуйста введите число!")
}

// Задание 2 // обновил добавив енум
enum MathOperator {
    case plus, minus, multiply, division
}

func calculator(numberOne: Int?, numberTwo: Int?, operation: MathOperator?) {
    guard let numOne = numberOne, let numTwo = numberTwo, let op = operation else {
        print("Некорректный ввод")
        return
    }
    
    var result = 0
    switch op {
    case .plus:
        result = numOne + numTwo
    case .minus:
        result = numOne - numTwo
    case .division:
        if numTwo == 0 {
            print("Ошибка: деление на ноль")
            return
        }
        result = numOne / numTwo
    case .multiply:
        result = numOne * numTwo
    
    }
    print("Результат: \(result)")
}

calculator(numberOne: 10, numberTwo: 20, operation: .division)


// Задание 3 // обновил добавив енум
enum UserRole {
    case admin, user, guest
}
func OpenAuth(userRole: UserRole?){
    guard let role = userRole else {
        print("Некорректный ввод")
        return
    }
    
    switch role {
    case .admin:
        print("Результат: Полный доступ")
    case .user:
        print("Результат: Ограниченный доступ")
    case .guest:
        print("Результат: Отсутствие доступа")
    }
}

// Enum

// Задание 1

enum TrafficLight {
    case red
    case green
    case yellow
    
}
func getTrafficLight(for flightInput: TrafficLight?) {
    guard let flight = flightInput else {
        print("Некорректный ввод")
        return
    }
    switch flight {
    case .red:
        print("Стоп")
    case .green:
        print("Можно идти")
    case .yellow:
        print("Приготовтесь")
    }
}

getTrafficLight(for: .green)

// Задание 2

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}
func getDay(for dayInput: Weekday?) {
    guard let day = dayInput else {
        print("Некорректный ввод")
        return
    }
    switch day {
    case .monday, .tuesday, .wednesday, .thursday, .friday:
        print("Рабочий день")
    case .saturday, .sunday:
        print("Выходной")
    }
}

// Задание 3
enum CompassDirection {
    case north, south, east, west
}

func getCompassDirection(for directionInput: CompassDirection?) {
    guard let direction = directionInput else {
        print("Некорректный ввод")
        return
    }
    switch direction {
    case .north:
        print("Север — холод и снег")
    case .south:
        print("Юг — тепло и солнце")
    case .east:
        print("Восток — рассвет и новая жизнь")
    case .west:
        print("Запад — закат и отдых")
    }
}

getCompassDirection(for: .east)
