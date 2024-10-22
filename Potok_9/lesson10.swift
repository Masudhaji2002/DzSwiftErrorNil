//
//  lesson10.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 22.10.2024.
//

import Foundation
// Task 1
protocol Playable {
    func play()
}
protocol Tunable {
    func tune()
}
// Task 2
class Piano: Playable, Tunable {
    func play() {
        print("Пианино играет мелодию")
    }
    func tune() {
        print("Пианино настроено")
    }
}
class Guitar: Playable, Tunable {
    func play() {
        print("Гитара играет мелодию")
    }
    func tune() {
        print("Гитара настроена")
    }
}
class Drum: Playable {
    func play() {
        print("Барабан играет мелодию")
    }
}

// Task 3
let piano = Piano()
let guitar = Guitar()
let drum = Drum()

func performConcert(playable: [Playable]) {
    for playbl in playable {
        if let instrumentTunable = playbl as? Tunable {
            playbl.tuneSettings()
            instrumentTunable.tune()
        }
        playbl.play()
    }
}

// Task 4
extension Playable {
    func tuneSettings() {
        print("Настройка инструмента...")
    }
}
let instruments: [Playable] = [piano, guitar, drum]
performConcert(playable: instruments)


// HardCoding
protocol Ink {
    func printColor()
}
class RedInk: Ink {
    func printColor() {
        print("Печать красным цветом")
    }
}
class BlueInk: Ink {
    func printColor() {
        print("Печать синим цветом")
    }
}
class GreenInk: Ink {
    func printColor() {
        print("Печать зеленым цветом")
    }
}

class Printer {
    var ink: Ink
    init(ink: Ink) {
        self.ink = ink
    }
    func startPrinting() {
        ink.printColor()
    }
}

let printer = Printer(ink: RedInk())
printer.startPrinting()
printer.ink = BlueInk()
printer.startPrinting()
