//
//  main.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 17.09.2024.
//

import Foundation

// конкатинация
// 1 dz
let firstName = "Magomed"
let lastName = "Magomedov"
let fullName = firstName + " " + lastName

print(fullName)

// 2 dz
let age = 21
let message = "Меня зовут" + " " + fullName + ", и мне" + " " + String(age) + " " + "лет"
print(message)

// 3 dz
print("Введите первое число:")
let firstNumber = readLine()!
print("Введите второе число:")
let secondNumber = readLine()!
let result = Int(firstNumber)! + Int(secondNumber)!
print("Сумма чисел" + " " + firstNumber + " " + "и" + " " + secondNumber + " " + "равна" + " " + String(result))

// Интерполяция
// Задание 1
let messagev2 = "Меня зовут \(fullName), и мне \(age) лет"
print(messagev2)

// Задание 2
print("Введите ваш рост (в метрах):")
let heightInput = readLine()!
print("Введите ваш вес (в килограммах):")
let weightInput = readLine()!

let height = Double(heightInput) ?? 0.0
let weight = Double(weightInput) ?? 0.0

let imt = weight / (height * height)
print("Ваш ИМТ равен: \(imt)")


// Задание 3
var productName = "Nescaffe"
var price = 540
var quantity = 5
print("Вы добавили в корзину \(quantity) шт. товара \(productName) на сумму \(quantity * price) руб.")

// Основные типы данных
// Задания 1
let integer16: Int16 = 100
let uinteger8: UInt8 = 200
let double: Double = .pi
let boolean: Bool = false
let str: String = "Hello, World!"

// Задание 2
print("Введите целочисленное число:")
let numberInput = Int(readLine()!)
let number1 = Double(numberInput!)
print(pow(number1, 2))

// Задание 3
let number2 = Int(readLine()!) ?? 0
let isEven: Bool
if number2 % 2 == 0 {
    isEven = true
}

// Переменные и константы
// Задание 1
var temperature: Double = 18
var temperatureNextDay: Double = 24
print(temperatureNextDay)

// Задание 2
let birthYear: Int = 2003
//birthYear = 2004 // константы не изменяемы


// Задание 3
var count = 10
//count = "hello" // ошибка потому что свифт это строго типизированный язык, объекту тима инт не нельзя присовить иной тип


// Логические значения и условные операторы(if/else)
let number10 = Int(readLine()!)!
print(number10 > 0  ? "Число положительное" : number10<0 ? "Число отрицательное" : "Число равно нулю")

let userAge = Int(readLine()!)!
print(userAge >= 18 ? "Доступ разрешен" : "Доступ запрещен" )



