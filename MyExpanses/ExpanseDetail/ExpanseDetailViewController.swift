//
//  ExpanseDetailViewController.swift
//  MyExpanses
//
//  Created by Pedro Mota on 09/02/23.
//

import UIKit

class ExpanseDetailViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?
    
    private var valueLabel = UILabel()
    private var titleLabel = UILabel()
    private var dateLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configure()
    }
    
    public func configure(with expanse: Expanse = Expanse(title: "iFood", date: "14/06/2023", value: 50.00)) {
        configureValueLabel(with: expanse.value)
    }
    
    private func configureValueLabel(with value: Double) {
        view.addSubview(valueLabel)
        
        valueLabel.text = "R$ \(value)"
        valueLabel.textColor = .black
        valueLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        valueLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        valueLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 32).isActive = true
        
        valueLabel.textAlignment = .center
    }
    
    
}
