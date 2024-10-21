//
//  hardCod.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 21.10.2024.
//

import Foundation

class Person {
    let name: String
    var age: Int
    
    init?(name: String, age: Int) {
        guard !name.isEmpty, age > 0 else {return nil}
        self.name = name
        self.age = age
    }
    
    func describe() {
        print("Имя: \(name). Возраст: \(age)")
    }
}

class Student: Person {
    let studentID: String
    init?(name: String, age: Int, studentID: String) {
        guard !name.isEmpty, age > 0, !studentID.isEmpty else {return nil}
        self.studentID = studentID
        super.init(name: name, age: age)
    }
    override func describe() {
        super.describe()
        print("Индентификатор студента: \(studentID)")
    }
}

class Professor: Person {
    var subject: String
    init?(name: String, age: Int, subject: String) {
        guard !name.isEmpty, age > 0, !subject.isEmpty else {return nil}
        self.subject = subject
        super.init(name: name, age: age)
    }
    override func describe() {
        super.describe()
        print("Профессор: \(name); Дисциплина: \(subject)")
    }
}

let studentOne = Student(name: "Albert", age: 18, studentID: "1001")
studentOne?.describe()
let studentTwo = Student(name: "John", age: 19, studentID: "1002")
studentTwo?.describe()
let professorOne = Professor(name: "Mikl", age: 55, subject: "Algebra")
professorOne?.describe()
