//
//  ViewController.swift
//  Expanses
//
//  Created by Pedro Mota on 26/08/22.
//

import UIKit

class MonthListViewController: UIViewController {
    
    private var tableView = UITableView(frame: .zero, style: .insetGrouped)
    private let months = ["January", "February", "March"]
    
    override func viewDidLoad() {
        title = "Expanses"
        configureTableView()
    }
    
    private func configureTableView() {
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MonthTableViewCell.self, forCellReuseIdentifier: MonthTableViewCell.reuseIdentifier)
        
        tableView.rowHeight = 43.5
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

extension MonthListViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MonthTableViewCell.reuseIdentifier) as? MonthTableViewCell else {
            return UITableViewCell()
        }
        let month = months[indexPath.row]
        cell.configure(with: month)
        
        return cell
    }
}
