//
//  lesson4.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 01.10.2024.
//

// Lesson 4

// ДЗ 1

// Задача 1
for numbers in 1...10 {
    print(numbers)
}

// Задача 2
let numbersInput = readLine() ?? ""
if let number = Int(numbersInput) {
    for numbers in 1...number {
        print(numbers)
    }
} else {
    print("Некорректный ввод")
}

    // Задача 3

for num in 1...20 {
    if num % 2 == 0 {
        print(num)
    } else {
        continue
    }
}

// ДЗ 2

// Задача 1

let students: [String : Int] = ["Maxim" :  4, "Albert" : 5, "John": 3]
for students1 in students{
    print(students1.key, students1.value)
}

// Задача 2
func countProduct(productWarehouseInput: [String: Int]?) {
    guard let productWarehouse = productWarehouseInput else {
        print("Некорректный ввод")
        return
    }
    let sumProduct = productWarehouse.values.reduce(0, +)
    print("Общее количество товаров: \(sumProduct)")
}
countProduct(productWarehouseInput: ["Pepsi": 500, "Coca Cola": 1000, "Fanta": 300])

// Задача 3
let populationCity: [String: Int] = [
    "Rostov-on-Don": 1096000,
    "Moscow": 13000000,
    "Kazan": 130000
]

print("Введите название города:")
let cityInput = readLine() ?? ""
if let population = populationCity[cityInput] {
    print("Население города \(cityInput) составляет \(population) человек.")
} else {
    print("Город не найден.")
}

// HARD CODING

let teamOne: [String: [Int]] = ["Alisa": [80, 20, 30], "Max": [96, 56, 76], "Fedor": [77, 73, 81] ]
let teamTwo: [String: [Int]] = ["Albert": [90, 87, 94], "Masud": [100, 100, 100], "Aziz": [95, 98, 93]]
let teamThird: [String: [Int]] = ["Jack": [90, 83, 90], "Mikl": [60, 69, 71], "Naruto": [0, 5, 0]]
let allTeam: [[String:[Int]]] = [teamOne, teamTwo, teamThird]

func evaluaeteParticipant(name: String, result: [Int]) {
    print("Задание участника \(name):")
        isTaskCompleted(score: result)
}

func isTaskCompleted(score: [Int]) {
    for num in score {
        if num >= 70 {
            print("Задание с результатом \(num): Выполнено успешно")
        } else {
            print("Задание с результатом \(num): Не выполнено")
        }
    }
    
}

for users in allTeam {
    for userInTeam in users {
        evaluaeteParticipant(name: userInTeam.key, result: userInTeam.value)
    }
}
