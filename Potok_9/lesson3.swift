//
//  lesson3.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 27.09.2024.
//

import Foundation

// Задание 1

// Задача 1
func getName() {
    print("Введите первое имя: ")
    let firstNameInput = readLine() ?? ""
    print("Введите второе имя: ")
    let secondNameInput = readLine() ?? ""
    print("Введите третье имя: ")
    let thirdNameInput = readLine() ?? ""
    print("Введите четвертое имя: ")
    let fourthNameInput = readLine() ?? ""
    print("Введите пятое имя: ")
    let fifthNameInput = readLine() ?? ""
    
    var arrayName: [String] = []
    
    arrayName.append(firstNameInput)
    arrayName.append(secondNameInput)
    arrayName.append(thirdNameInput)
    arrayName.append(fourthNameInput)
    arrayName.append(fifthNameInput)
    
    print("Имена: \(arrayName)")
}
// Задача 2
func getElement(arrayInteger: [Int]?, index: Int?) -> Int? {
    guard let arrayInteger = arrayInteger, let index = index else {
        print("Некорректный ввод")
        return nil
    }
    return arrayInteger[index]
}

// Задача 3
func swapElements(arrayInteger: [Int]?, index1: Int?, index2: Int?) -> Array<Int>? {
    guard let arrayInt = arrayInteger, let index1 = index1, let index2 = index2 else {
        print("Некорректный ввод")
        return nil
    }
    var arrayElements = arrayInt
    arrayElements.swapAt(index1, index2)
    return arrayElements
    
}

// Задание 2

// Задача 1
func combineArray(arrayStringFirst: [String]?, arrayStringSecond: [String]?) -> Array<String>? {
    guard let firstArray = arrayStringFirst, let secondArray = arrayStringSecond else {
        print("Некорректный вод")
        return nil
    }
    let arrayMerges = firstArray + secondArray
    return arrayMerges
    
}

// Задача 2
func areArraysEqual(arrayFirstInteger: [Int]?, arraySecondInteger: [Int]?) -> Bool? {
    guard let arrayFirstInteger = arrayFirstInteger, let arraySecondInteger = arraySecondInteger else {
        print("Некорректный ввод")
        return nil
    }
    return (arrayFirstInteger == arraySecondInteger ? true : false)
}



// Задача 3

func removeLastElement(arrayString: [String]?) -> Array<String>? {
    guard let arrayString = arrayString else {
        print("Некорректный ввод")
        return nil
    }
    if arrayString.count <= 2 {
        print("Массив содержит 2 или меньшее количество элементов")
        return []
    }
    
    return Array(arrayString[1..<arrayString.count-1])
    
}
