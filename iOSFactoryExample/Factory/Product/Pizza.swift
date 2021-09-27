//
//  Pizza.swift
//  iOSFactoryExample
//
//  Created by Santiago Gómez Giraldo - Ceiba Software on 22/09/21.
//

import UIKit

protocol PizzaModel {
    
    var pizzaName: String { get }
    var pizzaImage: String { get }
    
    func getIngredients() -> String
    func getCost() -> Double
}
