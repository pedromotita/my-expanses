//
//  BalanceDetailTableViewCell.swift
//  MyExpanses
//
//  Created by Pedro Mota on 27/01/23.
//

import UIKit

class BalanceDetailTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "BalanceDetailTableViewCell"
    
    private var titleLabel = UILabel()
    private var valueLabel = UILabel()
    private var dateLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureCell() {
        configureTitleLabel()
        configureDateLabel()
        configureValueLabel()
    }
    
    private func configureTitleLabel() {
        addSubview(titleLabel)
        
        
        titleLabel.text = "iFood"
        titleLabel.numberOfLines = 0
        
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.adjustsFontForContentSizeCategory = true
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.font = UIFont.preferredFont(forTextStyle: .body)
        
        titleLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 0).isActive = true
    }
    
    private func configureDateLabel() {
        addSubview(dateLabel)
        
        dateLabel.text = "14/06/2022"
        dateLabel.numberOfLines = 0
        
        dateLabel.adjustsFontSizeToFitWidth = true
        dateLabel.adjustsFontForContentSizeCategory = true
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        dateLabel.font = UIFont.preferredFont(forTextStyle: .caption1)
        dateLabel.textColor = .gray
        
        dateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor).isActive = true
    }
    
    private func configureValueLabel() {
        addSubview(valueLabel)
        
        valueLabel.text = "R$50,00"
        valueLabel.numberOfLines = 0
        
        valueLabel.adjustsFontSizeToFitWidth = true
        valueLabel.adjustsFontForContentSizeCategory = true
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        
        valueLabel.font = UIFont.preferredFont(forTextStyle: .body)
        valueLabel.textColor = .systemGreen
        
        valueLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).isActive = true
        valueLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }

}
