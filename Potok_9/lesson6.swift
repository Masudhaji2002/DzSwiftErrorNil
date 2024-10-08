//
//  lesson6.swift
//  Potok_9
//
//  Created by Масуд Гаджиев on 08.10.2024.
//

// Задание 1
enum CompasDirection {
    case north, south, east, west
}

func getCompassDirection(for directionInput: CompasDirection?) {
    guard let direction = directionInput else {
        print("Некорректный ввод")
        return
    }
    switch direction {
    case .north:
        print("Север — холод и снег")
    case .south:
        print("Юг — тепло и солнце")
    case .east:
        print("Восток — рассвет и новая жизнь")
    case .west:
        print("Запад — закат и отдых")
    }
}

// Задание 2
enum OrderStatus {
    case ordered, shipped, delivered, cancelled
}

func getOrderStatus(orderStatus: OrderStatus?) {
    guard let order = orderStatus else {
        print("Error")
        return
    }
    switch order {
    case .ordered:
        print("Заказ сделан")
    case .shipped:
        print("Заказ отправлен")
    case .delivered:
        print("Заказ доставлен")
    case .cancelled:
        print("Заказ отменен")
    }
    
}

// Задание 3

enum SocialMedia {
    case facebook, twitter, instagram
}

func getPopularHashtag(hashtagPopular: SocialMedia?) {
    guard let hashtag = hashtagPopular else {
        return
    }
    
    switch hashtag {
    case .facebook:
        print("Самый популярный хештэг: #travel")
    case .twitter:
        print("Самый популярный хештэг: #giveaway")
    case .instagram:
        print("Самый популярный хештэг: #love")
    }
    
}

// Задание 4

enum Grade {
    case excellent, good, satisfactory, unsatisfactory
}

func getGrade(grade: Grade?) {
    guard let gr = grade else {
        print("Error")
        return
    }
    
    switch gr {
    case .excellent:
        print("Отлично! Ты молодец!")
    case .good:
        print("Хорошо! Можешь лучше.")
    case .satisfactory:
        print("Удовлетворительно. Стоит подтянуть знания.")
    case .unsatisfactory:
        print("Неудовлетворительно. Нужно больше учиться.")
    }
}

// Switch-case
// Задание 1

enum Season {
    case winter, spring, summer, autumn
}

func getSeason(season: Season?) {
    guard let seas = season else {
        print("Error")
        return
    }
    switch seas {
    case .winter:
        print("Зима — холодное время года, часто идёт снег.")
    case .spring:
        print("Весна — пробуждение природы, цветут цветы.")
    case .summer:
        print("Лето — жаркое время года, можно купаться.")
    case .autumn:
        print("Осень — время сбора урожая и опадающих листьев.")
    }
}

// Задание 2

enum DeviceState {
    case on, off, sleep
}

func getState(state: DeviceState?) {
    guard let st = state else {
        print("Error")
        return
    }
    switch st {
    case .off:
        print("Устройство выключено.")
    case .on:
        print("Устройство включено.")
    case .sleep:
        print("Устройство находится в режиме сна.")
    }
}


// Hardcoding

enum Transport {
    case  car, bus, train, airplane
    
    enum BookingStatus {
        case notAvailable, available, fullyBooked
    }
    
    
    func getStatus(status: BookingStatus) {
        let nameTransport: String
        
        switch self {
        case .airplane:
            nameTransport = "Самолет"
        case .car:
            nameTransport = "Автомобиль"
        case .bus:
            nameTransport = "Автобус"
        case .train:
            nameTransport = "Поезд"
        }
        
        switch status {
        case .available:
            print("\(nameTransport): Доступно для бронирования")
        case .notAvailable:
            print("\(nameTransport): Не доступно для бронирования")
        case .fullyBooked:
            print("\(nameTransport): Все билеты проданы")
        }
        
    }
}

let car = Transport.car.getStatus(status: .fullyBooked)
let airplane = Transport.airplane.getStatus(status: .available)
let bus = Transport.bus.getStatus(status: .notAvailable)
let train = Transport.train.getStatus(status: .available)
