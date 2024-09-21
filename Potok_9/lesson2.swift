//
//  lesson2.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 21.09.2024.
//

// if else

// Задание 1
func checkNumber(){
    print("Введите число:")
    let inputNumber = readLine() ?? ""
    if let number = Int(inputNumber) {
        print(number > 0 ? "Число положительное" : number < 0 ? "Число отрицательное" : "Число равно нулю")
    } else {
        print("Некорректный ввод")
    }
}

// Задание 2

func checkAge(){
    print("Введите ваш возраст:")
    let inputAge = readLine() ?? ""
    if let age = Int(inputAge) {
        print(age >= 18 ? "Доступ разрешен" : "Доступ запрещен")
    } else {
        print("Некорректный ввод")
    }
}

// Задание 3

func numberOddOrEven(){
    print("Введите число:")
    let inputNumber = readLine() ?? ""
    if let number = Int(inputNumber) {
        print(number % 2 == 0 ? "Число четное" : "Число нечетное")
    } else {
        print("Некорректный ввод")
    }
}

// Задание 4
func authCheck(){
    print("Введите логин:")
    let inputLogIn = readLine() ?? ""
    print("Введите пароль:")
    let inputPassword = readLine() ?? ""
    print(inputLogIn == "admin" && inputPassword == "1234" ? "Доступ разрешен" : "Неверный логин или пароль")
    if inputLogIn.isEmpty || inputPassword.isEmpty {
        print("Заполните все поля!")
    }
        
}

// Опционалы

// Задание 1

func checkOptional(){
    var optionalName: String? = "Алексей"
    print("Здравствуйте, \(optionalName!)")
    optionalName = nil
    print("Здравствуйте, \(optionalName!)") // крашнется система, так как значение переменной будет пустое, система не поймет что нужно распаковать.  // Для того чтобы исправить краш, мы можем использовать guard let дабы понять не пустое ли значение переменной
    guard let unwrappedOptionalName = optionalName else {
        print("Переменная пустая")
        return
    }
    print(unwrappedOptionalName)
}

// Задание 2
var optionalNumber: Int? = 10
var number = optionalNumber ?? 0
print(number)

// Задание 3
func verifyDrivingLicense() {
    let ageSystem: Int8? = 20
    let minAgeSystem: Int8? = 18
    let testPassedSystem: Bool? = false
    if let age = ageSystem, let minAge = minAgeSystem, let testPassed = testPassedSystem {
        let canObtainLicense: Bool = (age >= minAge && testPassed) ? true : false
    } else {
        print("Некорректные данные")
    }
    
}

