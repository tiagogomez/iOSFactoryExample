//
//  MexicanPizza.swift
//  iOSFactoryExample
//
//  Created by Santiago Gómez Giraldo - Ceiba Software on 22/09/21.
//

import Foundation

struct MexicanPizza: PizzaModel {
    
    var pizzaName: String
    var pizzaImage: String
    
    func getIngredients() -> String {
        return "Carne Sasonada, Salsa Tabasco, Cebolla, Maiz, Aguacate, Limón"
    }
    
    func getCost() -> Double {
        return 12500.00
    }
}
