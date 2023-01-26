//
//  MonthExpansesDetailViewController.swift
//  MyExpanses
//
//  Created by Pedro Mota on 26/01/23.
//

import UIKit

class MonthExpansesDetailViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?
    
    private var balanceLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        configureBalanceLabel()
    }
    
    private func configureBalanceLabel() {
        view.addSubview(balanceLabel)
        
        balanceLabel.text = "R$25,00"
        balanceLabel.textColor = .black
        balanceLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        
        balanceLabel.translatesAutoresizingMaskIntoConstraints = false
        balanceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        balanceLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 32).isActive = true
        
        balanceLabel.textAlignment = .center
    }
}
