//
//  Player.swift
//  SeahawksPlayerFinder
//
//  Created by Connor Bradley on 04/12/2016.
//  Copyright © 2016 Connor Bradley. All rights reserved.
//

import Foundation

class player {
    static var name: String = ""
    static var age = 0
    static var number = 0
    static var position: String = ""
    static var college: String = ""
    static var experience: String = ""
    static var weight = 0
    static var height: String = ""
    static var votes = 0
    
    static func getPlayerByNum(Num: Int) -> Bool {
        //GET data from http request
        //not yet implemented
        //dummy data to show proof of concept
        if (Num == 3) {
            name = "Russell Wilson"
            age = 27
            number = Num
            position = "Quarterback"
            college = "Wisconsin"
            experience = "5"
            weight = 215
            height = "5-11"
            votes = 0
            return true
        }
        return false 
    }
    
    static func getPlayerByName(Name: String) -> Bool {
        //GET data from http request
        //not yet implemented
        if ("Russell Wilson".contains(Name)) {
            name = "Russell Wilson"
            age = 27
            number = 3
            position = "Quarterback"
            college = "Wisconsin"
            experience = "5"
            weight = 215
            height = "5-11"
            votes = 0
            return true
        }
        return false 
    }
    

}

