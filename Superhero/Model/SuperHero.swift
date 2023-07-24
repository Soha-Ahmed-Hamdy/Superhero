//
//  SuperHero.swift
//  Superhero
//
//  Created by Soha Ahmed Hamdy on 24/07/2023.
//

import Foundation
import SwiftUI

struct Superhero: Identifiable{
    var id = UUID()
    var title : String
    var image : String
    var message : String
    let gradient : [Color]
}

let superHeroData : [Superhero] = [
    
    Superhero(title: "Hulk",
              image: "hulk",
              message: "Hulk is very green",
              gradient:[Color("hulk1"), Color("hulk2")]),

    Superhero(title: "Ironman",
              image: "ironman",
              message: "Ironman can fly",
              gradient: [Color("ironman1"),Color("ironman2")]),

    Superhero(title: "Spiderman",
              image: "spiderman",
              message: "Spiderman is not a real spider",
              gradient: [Color("spiderman1"),Color("spiderman2")]),

    Superhero(title: "Superman",
              image: "superman",
              message: "Superman is from another planet",
              gradient: [Color("superman1"),Color("superman2")]),

    Superhero(title: "Wolverine",
              image: "wolverine",
              message: "Wolverine has knives in his hand",
              gradient: [Color("wolverine1"),Color("wolverine2")])
    ]


