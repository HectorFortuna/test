//
//  Item.swift
//  eggplant
//
//  Created by Hector Fortuna on 24/05/2023.
//  Copyright © 2023 HectorFortuna. All rights reserved.
//

import UIKit

class Item: NSObject {
    let name: String
    let calories: Double
    
    init(name: String, calories: Double){
        self.name = name
        self.calories = calories
    }

}
