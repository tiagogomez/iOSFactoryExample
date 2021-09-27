//
//  SpecialPizzaCreator.swift
//  iOSFactoryExample
//
//  Created by Santiago Gómez Giraldo - Ceiba Software on 22/09/21.
//

import Foundation

class SpecialPizzaCreator: PizzaCreator {
    
    override func createPizza() -> PizzaModel {
        let name = "Pizza Especial"
        let imageURL = "https://previews.123rf.com/images/suksao/suksao1504/suksao150400101/38717129-pizza-amante-carne-con-salchichas-salami-jam%C3%B3n-tocino-pepperoni-y-queso-en-el-restaurante-.jpg"
        return SpecialPizza(pizzaName: name, pizzaImage: imageURL)
    }
}
