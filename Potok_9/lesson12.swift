//
//  lesson12.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 02.11.2024.
//

// Task1

func findMaximum<T: Comparable>(in array: [T]) -> T? {
    guard !array.isEmpty else {
        return nil
    }
    return array.max()
}

let numbers = [10, 20, 15, 7]
if let maxNumber = findMaximum(in: numbers) {
    print(maxNumber)
} else {
    print("Массив пустой")
}

//Task2
struct Pair<T: Equatable, U: Equatable> {
    var first: T
    var second: U
    
    func isEqual(other: Pair) -> Bool {
        return self.first == other.first && self.second == other.second
    }
}

let pair1 = Pair(first: 10, second: "Hello")
let pair2 = Pair(first: 10, second: "Hello")
let pair3 = Pair(first: 5, second: "Hi")
print(pair1.isEqual(other: pair2))
print(pair1.isEqual(other: pair3))

//Task3
extension String {
    var isPalindrom: Bool {
        var stringCh = self.lowercased().replacing(" ", with: "")
        
        return stringCh == String(stringCh.reversed())
    }
}

let strOne = "Kazak"
let strTwo = "Hello"
print(strOne.isPalindrom)
print(strTwo.isPalindrom)

// Task4
extension Array {
    func chunked(size: Int) -> [[Element]] {
        guard size > 0 else {
            return []
        }
        
        return stride(from: 0, to: count, by: size).map {startIndex in Array(self[startIndex..<Swift.min(startIndex + size, count)])}
    }
}

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
let chunks = numbers.chunked(size: 3)
print(chunks)


// Task5
func compare<T: Comparable> (_ a: T?, _ b: T?) {
    guard let a = a, let b = b else {
        print("Одно или оба значения равны nil.")
        return
    }
    a>b ? print("\(a)>\(b)") : a==b ? print("\(a) == \(b)") : print("\(a)<\(b)")
}
let x = 5
let y = 4
compare(x, y)

// Task6

extension Dictionary where Key: Hashable, Value: Hashable {
    func flipped() -> [Value: Key] {
        return self.reduce(into: [Value: Key]()) { result, pair in
            if result[pair.value] == nil {
                result[pair.value] = pair.key
            } else {
                print("Предупреждение: значение '\(pair.value)' уже существует как ключ в новом словаре.")
            }
        }
    }
}
let originalDict = ["a": 1, "b": 2, "c": 3]
let flippedDict = originalDict.flipped()
print(flippedDict)
