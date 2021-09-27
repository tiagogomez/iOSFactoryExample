//
//  PizzaCellView.swift
//  iOSFactoryExample
//
//  Created by Santiago Gómez Giraldo - Ceiba Software on 24/09/21.
//

import UIKit

class PizzaCellView: UITableViewCell {

    @IBOutlet weak var pizzaImageView: UIImageView!
    @IBOutlet weak var pizzaLabel: UILabel!
    @IBOutlet weak var pizzaPrice: UILabel!
    @IBOutlet weak var pizzaIngredients: UILabel!
    
    var delegate: PizzaCellViewDelegate?
    var pizzaModel: PizzaModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func orderButtonPressed(_ sender: Any) {
        guard let pizzaModel = pizzaModel else { return }
        delegate?.presentOrder(with: pizzaModel)
    }
    
    func loadPizza(with pizzaModel: PizzaModel) {
        self.pizzaModel = pizzaModel
        pizzaLabel.text = pizzaModel.pizzaName
        pizzaPrice.text = String(pizzaModel.getCost())
        pizzaIngredients.text = pizzaModel.getIngredients()
        loadImage(from: URL(string: pizzaModel.pizzaImage))
    }
    
    private func loadImage(from url: URL?) {
        guard let url = url else { return }
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.pizzaImageView.image = image
                    }
                }
            }
        }
    }
}

protocol PizzaCellViewDelegate {
    
    func presentOrder(with pizza: PizzaModel)
}
