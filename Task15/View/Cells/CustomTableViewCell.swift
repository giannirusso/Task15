//
//  CellOne.swift
//  Task15
//
//  Created by D K on 13.05.2023.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    // Add any subviews you need here
    
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Configure any properties of your subviews here
        titleLabel.font = UIFont.systemFont(ofSize: 14)
        subtitleLabel.font = UIFont.systemFont(ofSize: 14)
        
        // Add your subviews to the cell's content view
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
        
        // Layout your subviews using Auto Layout
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            subtitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            subtitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            subtitleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
