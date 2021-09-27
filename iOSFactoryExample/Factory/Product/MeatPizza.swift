//
//  MeatPizza.swift
//  iOSFactoryExample
//
//  Created by Santiago Gómez Giraldo - Ceiba Software on 22/09/21.
//

import Foundation

struct MeatPizza: PizzaModel {
    
    var pizzaName: String
    var pizzaImage: String
    
    func getIngredients() -> String {
        return "Salchicha, Chorizo, Peperoni, Jamón"
    }
    
    func getCost() -> Double {
        return 12000.00
    }
}
