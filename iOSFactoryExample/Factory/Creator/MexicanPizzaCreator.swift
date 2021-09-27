//
//  MexicanPizzaCreator.swift
//  iOSFactoryExample
//
//  Created by Santiago Gómez Giraldo - Ceiba Software on 22/09/21.
//

import Foundation

class MexicanPizzaCreator: PizzaCreator {
    
    override func createPizza() -> PizzaModel {
        let name = "Pizza Mexicana"
        let imageURL = "https://t1.rg.ltmcdn.com/es/images/2/1/2/img_pizza_mexicana_7212_paso_7_600.jpg"
        return MexicanPizza(pizzaName: name, pizzaImage: imageURL)
    }
}
