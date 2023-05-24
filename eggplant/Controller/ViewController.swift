//
//  ViewController.swift
//  eggplant
//
//  Created by Hector Fortuna on 24/05/2023.
//  Copyright © 2023 HectorFortuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField?
    @IBOutlet var happinessTextField: UITextField?
    
    @IBAction func addButton(_ sender: Any) {
        
//        if let foodName = nameTextField?.text, let foodHappiness = happinessTextField?.text {
//            let name = foodName
//            if let happiness = Int(foodHappiness){
//                let refeicao = Refeicao(name: name, happiness: happiness)
//                print("Comi \(refeicao.name) e fiquei com felicidade: \(refeicao.happiness) ")
//            } else{
//                print("erro")
//            }
//        }
        
        guard let foodName = nameTextField?.text else {
            print("Digite um nome")
            return
        }
        
        guard let foodHappiness = happinessTextField?.text, let happiness = Int(foodHappiness) else {
            print("Digite um número válido!")
            return
        }
        
        let refeicao = Refeicao(name: foodName, happiness: happiness)
        print("Comi \(refeicao.name) e fiquei com felicidade: \(refeicao.happiness) ")
    }
}

