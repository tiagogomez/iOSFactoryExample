//
//  PizzaViewController.swift
//  iOSFactoryExample
//
//  Created by Santiago Gómez Giraldo - Ceiba Software on 22/09/21.
//

import UIKit

class PizzaViewController: UIViewController {
    
    var pizzaOptions = [PizzaCreator(),
                        MeatPizzaCreator(),
                        MexicanPizzaCreator(),
                        SpecialPizzaCreator(),
                        VegetarianPizzaCreator()]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        self.title = "Pizzeria Ceiba"
    }
    
    private func configureTableView() {
        let pizzaCellNib = UINib(nibName: "PizzaCellView", bundle: nil)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(pizzaCellNib, forCellReuseIdentifier: "PizzaView")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 105
    }
}

extension PizzaViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pizzaOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PizzaView", for: indexPath) as? PizzaCellView else {
            return UITableViewCell()
        }
        let pizzaData = pizzaOptions[indexPath.row].createPizza()
        cell.loadPizza(with: pizzaData)
        cell.delegate = self
        return cell
    }
}

extension PizzaViewController: PizzaCellViewDelegate {
    
    func presentOrder(with pizza: PizzaModel) {
        let alert = UIAlertController(title: pizza.pizzaName,
                                      message: "\(pizza.getIngredients()) \nCosto: $\(pizza.getCost())",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar",
                                      style: .default,
                                      handler: nil))
        alert.addAction(UIAlertAction(title: "Cancelar",
                                      style: .default,
                                      handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
