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
        configureTableView()
        self.title = "Pizzeria Ceiba"
        let tap = UITapGestureRecognizer(target: self,
                                         action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        super.viewDidLoad()
    }
    
    private func configureTableView() {
        let pizzaCellNib = UINib(nibName: "PizzaCellView", bundle: nil)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(pizzaCellNib, forCellReuseIdentifier: "PizzaView")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 105
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
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
    
    func presentOrder(with pizza: PizzaModel, and amount: Double) {
        let cost = pizza.getCost() * amount
        let alert = UIAlertController(title: pizza.pizzaName,
                                      message: "\(pizza.getIngredients()) \nCosto: $\(cost)",
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
