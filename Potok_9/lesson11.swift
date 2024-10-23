//
//  lesson11.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 23.10.2024.
//

import Foundation

// Task1
struct Sstudent {
    let name: String
    var grade: Int
}

let sstudents: [Sstudent] = [
    Sstudent(name: "Albert", grade: 5),
    Sstudent(name: "Max", grade: 3),
    Sstudent(name: "Masud", grade: 4)
]
// task1
let nameStudents = sstudents.map {$0.name}
// task2
let perfectStudents = sstudents.filter {$0.grade > 4}
//task3
let totalGrades = sstudents.reduce(0) { (total, student) in total + student.grade }
let averageGrade = students.isEmpty ? 0 : totalGrades / students.count

// Tsk2
let wordss: [String] = ["Hello", "World", "Swift", "Potok", "9", "Miki"]
let sortedWords = wordss.filter {$0.count>4}.count
print("Количество слов с длиной более 4 символов: \(sortedWords)")
// HardCoding
struct Entry {
    var letter: String
    let words: [String]
}

func buildIndex(words: [String]) -> [Entry] {
    let filteredWord = words.filter {word in guard let firstCharacter = word.first, firstCharacter.isLetter else { return false
    }
        return true
    } // создаем новый массив проверив что первым элементом является слово, в котором первый символ слова является буквой
    
    let firstLetter = filteredWord.map {word in return word.prefix(1).capitalized} // создаем массив из заглавных букв
    
    let uniquelFirstLetter = Set(firstLetter) // убираем дублирующие буквы благодаря Set
    
    let sortedUniquelFirstLetter = uniquelFirstLetter.sorted() // сортируем буквы по алфавиту
    
    let entries = sortedUniquelFirstLetter.map {letter in
        let matchingWords = filteredWord.filter {word in return word.prefix(1).capitalized == letter}
        return Entry(letter: letter, words: matchingWords)
    } // создаем массив типа Entry, в котором проверяем массив строк на что первый символ word равняется символу letter и в случае truе добавляем в ентри первую букву заглавную и слово имеющее подобный первый символ
    
    return entries
}

let words = ["sun", "banana", "blueberry", "cherry", "", "Date", "34fig", "garage", "123", ""]
let index = buildIndex(words: words)

for entry in index {
    print("Letter: \(entry.letter), Words: \(entry.words)")
}
