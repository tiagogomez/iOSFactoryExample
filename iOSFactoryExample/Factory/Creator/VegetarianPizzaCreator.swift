//
//  VegetarianPizzaCreator.swift
//  iOSFactoryExample
//
//  Created by Santiago Gómez Giraldo - Ceiba Software on 22/09/21.
//

import Foundation

class VegetarianPizzaCreator: PizzaCreator {
    
    override func createPizza() -> PizzaModel {
        let name = "Pizza Vegetariana"
        let imageURL = "https://recetasdecocinafaciles.net/wp-content/uploads/2018/01/pizza-vegetariana.jpg"
        return VegetarianPizza(pizzaName: name, pizzaImage: imageURL)
    }
}
