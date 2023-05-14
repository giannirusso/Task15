//
//  SwitchTableViewCell.swift
//  Task15
//
//  Created by D K on 14.05.2023.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    let titleLabel = UILabel()
    

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Configure any properties of your subviews here
        titleLabel.font = UIFont.systemFont(ofSize: 14)
        titleLabel.backgroundColor = .red
        
        // Add your subviews to the cell's content view
        contentView.addSubview(titleLabel)
        
        // Layout your subviews using Auto Layout
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

