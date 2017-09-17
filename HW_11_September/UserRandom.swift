//
//  UserRandom.swift
//  HW_11_September
//
//  Created by Дамир Зарипов on 17.09.17.
//  Copyright © 2017 itisioslab. All rights reserved.
//

import Foundation

class UserRandom {
    
    var name : String = ""
    var surname : String = ""
    var age : Int = 0
    var city : String = ""
    
    func createUser() {
        self.name = createName()
        self.surname = createSurname()
        self.age = createAge()
        self.city = createCity()
    }
    
    func createName() -> String {
        let names : [String] = ["TestN1", "TestN2", "TestN3"]
        let number = Int(arc4random_uniform(UInt32(names.count) - 1))
        return names[number]
    }
    
    func createSurname() -> String {
        let surnames : [String] = ["TestS1", "TestS2", "TestS3"]
        let number = Int(arc4random_uniform(UInt32(surnames.count) - 1))
        return surnames[number]
    }
    
    func createAge() -> Int {
        let randomAge = Int(arc4random_uniform(UInt32(100)+1))
        return randomAge
    }
    
    func createCity() -> String {
        let cities : [String] = ["Kazan", "Almet", "Elabuga"]
        let number = Int(arc4random_uniform(UInt32(cities.count) - 1))
        return cities[number]
    }
    
    func createStatus() -> Bool {
        let values : [Bool] = [true, false]
        let number = Int(arc4random_uniform(UInt32(values.count) - 1))
        return values[number]
    }
    
}
