//
//  lesson14.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 09.11.2024.
//

import Foundation

// Task1


enum FileError: Error {
    case fileNotFound
    case insufficientPermissions
    case unknown
}

func readFile(named: String) -> Result<String, FileError> {
    named == "document.txt" ? .success(named) : named == "restricted.txt" ? .failure(.insufficientPermissions) : .failure(.fileNotFound)
}
let dataName = readFile(named: "document.txt")
switch dataName {
case .success(let name):
    print("Содержимое файла: \(name)")
case .failure(.fileNotFound):
    print("файл не найден")
case .failure(.insufficientPermissions):
    print("Нет прав доступа к файлу")
case .failure(.unknown):
    print("Произошла неизвестная ошибка")
}

// Task2

enum CalculationError: Error {
    case divisionByZero
    case negativeNumber
    case notFoundNumber
}

func divide(numberOne: Double?, numberTwo: Double?) throws -> Double{
    guard let numOne = numberOne, let numTwo = numberTwo else {
        throw CalculationError.notFoundNumber
    }
    guard numTwo != 0 else {
        throw CalculationError.divisionByZero
    }
    let result = numOne / numTwo
    print("Деление \(numOne) на \(numTwo) равно \(result)")
    return result
}

func squareRoot(number: Double?) throws -> Double {
    guard let num = number else {
        throw CalculationError.notFoundNumber
    }
    guard num>=0 else {
        throw CalculationError.negativeNumber
    }
    
    let result = num.squareRoot()
    print("Квадратый корень числа \(num) равно \(result)")
    return result
}

func calculate() {
    do {
        let result = try divide(numberOne: 10.0, numberTwo: 5.0)
        let resultTwo = try squareRoot(number: result)
    
    } catch CalculationError.divisionByZero {
        print("Ошибка: деление на ноль")
    } catch CalculationError.negativeNumber {
        print("Ошибка: корень из отрицательного числа")
    } catch CalculationError.notFoundNumber {
        print("Ошибка: отсутствие данных")
    } catch {
        print("Неизвестная ошибка")
    }
    
}

calculate()

// Task 3

enum NetworkError: Error {
    case notConnected
    case timeout
}


func fetchUserProfile() -> Result<String, NetworkError> {
    let bool = Bool.random()
    if bool {
        return .success("Профиль пользователя загружен")
    } else {
        return .failure(.notConnected)
    }
}

func fetchUserOrders() -> Result<String, NetworkError> {
    let bool = Bool.random()
    if bool {
        return .success("Заказы пользователя загружены")
    } else {
        return .failure(.timeout)
    }
}

func loadUserData() {
    switch fetchUserProfile() {
        case .success(let profileMessage):
            print(profileMessage)
        case .failure(let error):
            switch error {
            case .notConnected:
                print("Ошибка загрузки: отсутствует подключение к профилю")
                return
            case .timeout:
                print("Ошибка загрузки: превышено время ожидания при загрузке профиля")
                return
            }
        }

    switch fetchUserOrders() {
    case .success(let ordersMessage):
        print(ordersMessage)
    case .failure(let error):
        switch error {
        case .notConnected:
            print("Ошибка загрузки: отсутствует подключение к заказам")
            return
        case .timeout:
            print("Ошибка загрузки: превышено время ожидания при загрузке заказов")
            return
                    }
    }
    
    print("Все данные загружены: Профиль и Заказы")
    
    
    
}

loadUserData()

// Task4

enum PaymentError: Error {
    case insufficientFunds
    case invalidCard
    case transactionError
}

func processPayment(amount: Int) throws {
    if amount > 1000 {
            throw PaymentError.insufficientFunds
        } else if amount <= 0 {
            throw PaymentError.invalidCard
        } else {
            print("Оплата на сумму \(amount) прошла успешно")
        }
}

func makePayment(amount: Int) {
    do {
            let result = try processPayment(amount: amount)
            
        } catch PaymentError.insufficientFunds {
            print("Недостаточно средств для оплаты")
        } catch PaymentError.invalidCard {
            print("Неверная карта")
        } catch PaymentError.transactionError {
            print("Произошла ошибка при обработке транзакции")
        } catch {
            print("Неизвестная ошибка \(error)")
        }
}

makePayment(amount: 100)
makePayment(amount: 10001)
makePayment(amount: -1)
