//
//  SpecialPizza.swift
//  iOSFactoryExample
//
//  Created by Santiago Gómez Giraldo - Ceiba Software on 22/09/21.
//

import Foundation

struct SpecialPizza: PizzaModel {
    
    var pizzaName: String
    var pizzaImage: String
    
    func getIngredients() -> String {
        return "Peperoni, Tocino, Salchicha Italiana"
    }
    
    func getCost() -> Double {
        return 11000.00
    }
}
