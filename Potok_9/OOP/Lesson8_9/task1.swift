//
//  task1.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 21.10.2024.
//


class Employee {
    var name: String
    var salary: Double
    
    init?(name: String, salary: Double) {
        guard !name.isEmpty, salary > 0 else {
            print("Некорректное имя или зарплата")
            return nil
        }
        self.name = name
        self.salary = salary
    }
    
    func describe() {
        print("Имя: \(name), Зарплата: \(salary)")
    }
}

class Manager: Employee {
    var teamSize: Int
    
    init?(name: String, salary: Double, teamSize: Int) {
        guard teamSize > 0 else {
            print("Некорректный размер команды")
            return nil
        }
        self.teamSize = teamSize
        super.init(name: name, salary: salary)
    }
    
    override func describe() {
        super.describe()
        print("Команда из \(teamSize) сотрудников")
    }
}

class Director: Manager {
    var budget: Double
    
    init?(budget: Double, name: String, salary: Double, teamSize: Int) {
        guard budget > 0 else {
            print("Некорректный бюджет")
            return nil
        }
        self.budget = budget
        super.init(name: name, salary: salary, teamSize: teamSize)
    }
    
    override func describe() {
        super.describe()
        print("Бюджет: \(budget)$")
    }
}

let employee = Employee(name: "Masud", salary: 350)
let manager = Manager(name: "Maksim", salary: 400, teamSize: 10)
let director = Director(budget: 10000, name: "Albert", salary: 350, teamSize: 10)

employee?.describe()
manager?.describe()
director?.describe()
