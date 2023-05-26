//
//  FoodTableViewController.swift
//  eggplant
//
//  Created by Hector Fortuna on 25/05/2023.
//  Copyright © 2023 HectorFortuna. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var food = [Refeicao(name: "Macarrão", happiness: 4),
                Refeicao(name: "Pizza", happiness: 4),
                Refeicao(name: "Comida Japonesa", happiness: 5)]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int {
        return food.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let foods = food[indexPath.row]
        cell.textLabel?.text = foods.name
        
        return cell
    }
    
    func add(_ refeicao:Refeicao){
        food.append(refeicao)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ViewController{
            viewController.tableViewController = self
        }
    }
}

