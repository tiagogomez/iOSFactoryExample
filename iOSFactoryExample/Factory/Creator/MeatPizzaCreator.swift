//
//  MeatPizzaCreator.swift
//  iOSFactoryExample
//
//  Created by Santiago Gómez Giraldo - Ceiba Software on 22/09/21.
//

import Foundation

class MeatPizzaCreator: PizzaCreator {
    
    override func createPizza() -> PizzaModel {
        let name = "Pizza de Carne"
        let imageURL = "https://www.pizzaspiccolo.com.co//wp-content/uploads/2015/11/pizza-carnes-sp-1.jpg"
        return MeatPizza(pizzaName: name, pizzaImage: imageURL)
    }
}
