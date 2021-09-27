//
//  VegetarianPizza.swift
//  iOSFactoryExample
//
//  Created by Santiago Gómez Giraldo - Ceiba Software on 22/09/21.
//

import Foundation

struct VegetarianPizza: PizzaModel {

    var pizzaName: String
    var pizzaImage: String
    
    func getIngredients() -> String {
        return "Cebolla, Pimiento"
    }
    
    func getCost() -> Double {
        return 10500.00
    }
}
