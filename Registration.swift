//
//  Registration.swift
//  HotelManzana
//
//  Created by Andres Gutierrez on 1/14/18.
//  Copyright © 2018 Andres Gutierrez. All rights reserved.
//

import Foundation

struct Registration {
    var firstName: String
    var lastName: String
    var email: String
    
    var checkIn: Date
    var checkOut: Date
    var numberOfAdults: Int
    var numberOfChildren: Int
    
    var roomType: Room
    var wifi: Bool
    
    init(firstName: String, lastName: String, email: String, checkIn: Date, checkOut: Date, numberOfAdults: Int, numberOfChildren: Int, roomType: Room, wifi: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.checkIn = checkIn
        self.checkOut = checkOut
        self.numberOfAdults = numberOfAdults
        self.numberOfChildren = numberOfChildren
        self.roomType = roomType
        self.wifi = wifi
    }
}

struct Room: Equatable {

    
    var id: Int
    var name: String
    var shortName: String
    var price: Int
    
//    init(id: Int, name: String, shortName: String, price: Int) {
//        self.id = id
//        self.name = name
//        self.shortName = shortName
//        self.price = price
//    }

    static var all: [Room] {
        return [
            Room(id: 0, name: "Two Queens", shortName: "2Q", price: 179),
            Room(id: 1, name: "One King", shortName: "K", price: 209),
            Room(id: 2, name: "Penthouse Suite", shortName: "PHS", price: 309)
            
        ]
    }
}

func ==(lhs: Room, rhs: Room) -> Bool {
    return lhs.id == rhs.id
}



