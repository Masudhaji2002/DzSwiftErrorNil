//
//  task2.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 21.10.2024.
//

import Foundation

class Shape {
   func area() -> Double {
       return 0.0
   }
    
}

class Rectangl: Shape {
    var height: Double
        var width: Double
        
        init?(height: Double, width: Double) {
            guard height > 0.0 && width > 0.0 else { return nil }
            self.height = height
            self.width = width
        }
    override func area() -> Double {
        return height*width
    }
    
}

class Circle: Shape {
    var radius: Double
    
    init?(radius: Double) {
        guard radius > 0.0 else { return nil }
        self.radius = radius
    }
    override func area() -> Double {
        return Double.pi * radius * radius
    }
}

let rect = Rectangl(height: 13.4, width: 12.2)
let circle = Circle(radius: 10.2)

print(rect?.area() ?? 0.0)
print(circle?.area() ?? 0.0)
