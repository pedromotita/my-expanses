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
    private var expansesTableView = UITableView(frame: .zero, style: .insetGrouped)
    private var headerLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        
        configureBalanceLabel()
        configureExpansesTableView()
        configureHeaderLabel()
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
    
    private func configureHeaderLabel() {
        view.addSubview(headerLabel)
        
        headerLabel.text = "Expanses"
        headerLabel.textColor = .black
        headerLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.topAnchor.constraint(equalTo: balanceLabel.bottomAnchor, constant: 32).isActive = true
        headerLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
    }
    
    private func configureExpansesTableView() {
        view.addSubview(expansesTableView)
        
        expansesTableView.delegate = self
        expansesTableView.dataSource = self
        expansesTableView.register(BalanceDetailTableViewCell.self, forCellReuseIdentifier: BalanceDetailTableViewCell.reuseIdentifier)
        
        expansesTableView.rowHeight = 60
        
        expansesTableView.translatesAutoresizingMaskIntoConstraints = false
        expansesTableView.topAnchor.constraint(equalTo: balanceLabel.bottomAnchor, constant: 32).isActive = true
        expansesTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        expansesTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        expansesTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

extension MonthExpansesDetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return BalanceDetailTableViewCell()
    }
    
}
