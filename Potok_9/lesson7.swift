//
//  lesson7.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 11.10.2024.
//

// Задание 1

struct Rectangle {
    var whidth: UInt
    var height: UInt
    
    func area() {
        print("Площадь: \(whidth * height)")
    }
    func checkSquare() {
        whidth == height ? print("Квадрат") : print("Прямоугольник")
    }
}
var obj1 = Rectangle(whidth: 20, height: 20)
obj1.area()
obj1.checkSquare()

// Задание 2

struct BankAccount {
    let accountNumber: String
    var balance: UInt
    
    mutating func replenishment(money: UInt) {
        balance += money
        print("Баланс пополнен на сумму \(money)₽.\nВаш баланс: \(balance)₽")
    }
    
    mutating func takeMoney(money: UInt) {
        balance >= money ? { balance -= money; print("Снятие средств со счета на сумму \(money)₽.\nВаш баланс: \(balance)₽") }() : print("Недостаточно средств на счете")
        
    }
}
var acc1 = BankAccount(accountNumber: "1", balance: 10000)
acc1.replenishment(money: 5000)
acc1.takeMoney(money: 10000)

// Задание 3


struct Product {
    let name: String
    var price: Double
    var quantity: UInt
    
    func totalCost() {
        guard price > 0 else {
            print("Некорректный ввод")
            return
        }
        return print("Общая суммма товаров: \(price*Double(quantity))")
    }
    
    mutating func restock(quantity: UInt) {
        self.quantity += quantity
    }
    
    mutating func sell(quantitySell: UInt) {
        guard quantity > quantitySell else {
            print("Недостаточно товара на складе")
            return
        }
        quantity -= quantitySell
    }
}

// Задание 4

struct BankAccountt {
    let accountNumber: String
    var balance: Double
    
    
    mutating func deposit(money: Double) {
        guard money>0 else {
            print("Некорректный ввод")
            return
        }
        balance += money
               print("Баланс пополнен на сумму \(money)$.\nВаш баланс: \(balance)$")
    }
    
    mutating func withdraw(money: Double) {
        guard money>0 else {
            print("Некорректный ввод")
            return
        }
        balance >= money ? { balance -= money; print("Снятие средств со счета на сумму \(money)₽.\nВаш баланс: \(balance)₽") }() : print("Недостаточно средств на счете")
                 
    }
    mutating func transfer(amount: Double, to: BankAccountt) {
        guard amount>0 else {
                    print("Некорректный ввод")
                    return
                }
        var toCpy = to
        amount<=to.balance ? {toCpy.balance += amount; print("Совершен перевод на сумму \(amount) на счет \(to.accountNumber)")}() : print("Недостаточно средств"); return
    }
    
}
var userOnet = BankAccountt(accountNumber: "10", balance: 135.32)
var userTwo = BankAccountt(accountNumber: "2", balance: 100.0)
userOnet.transfer(amount: 10.5, to: userTwo)


// Hard Coding
struct Book {
    
    let title: String
    let author: String
    let year: UInt
    var isAvailable: Bool
    
    mutating func borrow() -> Bool {
        guard isAvailable else {
            print("Книга уже заимствована.")
            return false
        }
        isAvailable = false
        return true
    }
    
    mutating func returnBook() -> Bool {
        guard !isAvailable else {
            print("Книга уже доступна.")
            return false
        }
        isAvailable = true
        return true
    }
}

struct Author {
    let name: String
    var books: [Book]
    
    func printBooks() {
        for book in books {
            print("Название: \(book.title), Автор: \(book.author), Год: \(book.year), Доступна: \(book.isAvailable)")
        }
    }
}

struct User {
    let name: String
    private(set) var borrowedBooks: [Book]
    
    mutating func borrowBook(book: inout Book) {
        guard book.isAvailable else {
            print("Книга не доступна.")
            return
        }
        
        if borrowedBooks.contains(where: { $0.title == book.title && $0.author == book.author }) {
            print("Эта книга уже заимствована вами.")
            return
        }
        
        if book.borrow() {
            borrowedBooks.append(book)
            print("Книга успешно заимствована.")
        }
    }
    
    mutating func returnBook(book: inout Book) {
        guard let index = borrowedBooks.firstIndex(where: { $0.title == book.title && $0.author == book.author }) else {
            print("Эта книга не заимствована вами.")
            return
        }
        
        if book.returnBook() {
            borrowedBooks.remove(at: index)
            print("Книга успешно возвращена.")
        }
    }
}

var bookOne = Book(title: "World", author: "Knife", year: 2002, isAvailable: true)
var bookTwo = Book(title: "Zero", author: "Albert", year: 2003, isAvailable: true)
var bookThird = Book(title: "Lordest", author: "Albert", year: 2003, isAvailable: true)
var bookHh = Book(title: "Rosegold", author: "Albert", year: 2003, isAvailable: true)

var authorOne = Author(name: "Albert", books: [bookTwo, bookThird, bookHh])
var userOne = User(name: "Masud Haji", borrowedBooks: [bookTwo])

userOne.borrowBook(book: &bookTwo)
userOne.borrowBook(book: &bookTwo)
authorOne.printBooks()
print(userOne.borrowedBooks)

userOne.returnBook(book: &bookTwo)
authorOne.printBooks()
print(userOne.borrowedBooks)

