//
//  Refeicao.swift
//  eggplant
//
//  Created by Hector Fortuna on 24/05/2023.
//  Copyright © 2023 HectorFortuna. All rights reserved.
//

import UIKit

class Refeicao: NSObject {
    
    let name: String
    let happiness : Int
    let itens: Array<Item> = []
    
    init(name: String, happiness: Int){
        self.name = name
        self.happiness = happiness
    }
    
    func totalCalories() -> Double{
        var total = 0.0
        
        for item in itens {
            total += item.calories
        }
        return total
    }

}
