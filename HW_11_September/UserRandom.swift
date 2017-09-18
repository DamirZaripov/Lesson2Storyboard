//
//  UserRandom.swift
//  HW_11_September
//
//  Created by Дамир Зарипов on 17.09.17.
//  Copyright © 2017 itisioslab. All rights reserved.
//

import Foundation

let names : [String] = ["TestN1", "TestN2", "TestN3"]
let surnames : [String] = ["TestS1", "TestS2", "TestS3"]
let cities : [String] = ["Kazan", "Almet", "Elabuga"]

class UserRandom {
    
    var name : String = ""
    var surname : String = ""
    var age : Int = 0
    var city : String = ""
    
    func createUser() {
        name = createName()
        surname = createSurname()
        age = createAge()
        city = createCity()
    }
    
    func createName() -> String {
        let number = Int(arc4random_uniform(UInt32(names.count) - 1))
        return names[number]
    }
    
    func createSurname() -> String {
        let number = Int(arc4random_uniform(UInt32(surnames.count) - 1))
        return surnames[number]
    }
    
    func createAge() -> Int {
        let randomAge = Int(arc4random_uniform(UInt32(100)+1))
        return randomAge
    }
    
    func createCity() -> String {
        let number = Int(arc4random_uniform(UInt32(cities.count) - 1))
        return cities[number]
    }
    
}
