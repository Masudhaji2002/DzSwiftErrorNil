//
//  lesson13.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 07.11.2024.
//

import Foundation

class Student1 {
    let name: String
    var course: Course?
    
    init(name: String) {
        self.name = name
        print("Student \(name) initialized")
    }
    
    deinit {
        print("Student \(name) deinitialized")
    }
}

class Course {
    let title: String
    weak var student: Student1?
    
    init(title: String) {
        self.title = title
        print("Cours \(title) initialized")
    }
    
    deinit {
        print("Course \(title) deinitialized")
    }
}

func enrollStudent(student: Student1, course: Course) {
    
    student.course = course
    course.student = student
}

enrollStudent(student: Student1(name: "John"), course: Course(title: "Swift"))


// Task 2
class Author {
    let name: String
    var book: Book?
    var introduceBook: (() -> Void)?
    
    init(name: String, book: Book? = nil) {
        self.name = name
        self.book = book
        print("class Author inizialized")
        
        self.introduceBook = {
            [weak self] in guard let self = self else {return }
            print("Название книги \(self.book?.title ?? ""), автор: \(self.name)")
        }
    }
    
    deinit {
        print("class Author deinitialized")
    }
    
}

class Book {
    let title: String
    weak var author: Author?
    
    init(title: String, author: Author? = nil) {
        self.title = title
        self.author = author
        print("class Book inizialized")
    }
    
    deinit {
        print("class Book deinitialized")
    }
}

func createAuthorAndBook(author: Author, book: Book) {
    author.book = book
    book.author = author
    author.introduceBook?()
}

createAuthorAndBook(author: Author(name: "Albert"), book: Book(title: "Dark Knight"))


