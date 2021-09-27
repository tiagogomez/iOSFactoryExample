//
//  OriginalPizza.swift
//  iOSFactoryExample
//
//  Created by Santiago Gómez Giraldo - Ceiba Software on 22/09/21.
//

import UIKit

struct OriginalPizza: PizzaModel {
    
    var pizzaName: String
    var pizzaImage: String
    
    
    func getIngredients() -> String {
        return "Pepperoni"
    }
    
    func getCost() -> Double {
        return 10000.00
    }
}
