//
//  PizzaCreator.swift
//  iOSFactoryExample
//
//  Created by Santiago Gómez Giraldo - Ceiba Software on 22/09/21.
//

import Foundation

class PizzaCreator {
    
    func cookPizzaBase() {
        print("Cooking pizza base")
    }
    
    func createPizza() -> PizzaModel {
        let name = "Pizza Original"
        let imageURL = "https://placeralplato.com/files/2016/01/Pizza-con-pepperoni.jpg"
        return OriginalPizza(pizzaName: name, pizzaImage: imageURL)
    }
}
