//
//  Author.swift
//  Author Card
//
//  Created by sunil kumar on 30/08/22.
//

import Foundation
import SwiftUI

struct Author: Identifiable, Decodable{
    
    var id: UUID?
    var name: String
    var image:String
    var quotesArray:[String]
    
    static func testData() -> Author{
        return Author(id: UUID(), name: "ELEANOR ROOSEVELT", image: "ambition", quotesArray: ["With the new day comes new strength and new thoughts.",
                                                                                              
                                                                                              "No one can make you feel inferior without your consent.",

                                                                                              "It is not fair to ask of others what you are not willing to do yourself.",

                                                                                              "Never allow a person to tell you no who doesn't have the power to say yes.Love",

                                                                                              "If life were predictable it would cease to be life, and be without flavor and tasteless."])
    }
    
}
