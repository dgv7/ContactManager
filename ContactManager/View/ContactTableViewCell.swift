//
//  ContactTableViewCell.swift
//  ContactManager
//
//  Created by 김동건 on 7/19/24.
//

import Foundation
import UIKit

class ContactTableViewCell: UITableViewCell {
    
    let profileImageView = UIImageView()
    let nameLabel = UILabel()
    let phoneLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        // Profile Image setup
        profileImageView.layer.cornerRadius = 35
        profileImageView.layer.borderWidth = 1
        profileImageView.layer.borderColor = UIColor.gray.cgColor
        profileImageView.clipsToBounds = true
        profileImageView.backgroundColor = .lightGray
        contentView.addSubview(profileImageView)
        
        // Name Label setup
        nameLabel.font = UIFont.systemFont(ofSize: 16)
        contentView.addSubview(nameLabel)
        
        // Phone Label setup
        phoneLabel.font = UIFont.systemFont(ofSize: 14)
        phoneLabel.textColor = .gray
        contentView.addSubview(phoneLabel)
        
        // Layout constraints
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            profileImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 70),
            profileImageView.heightAnchor.constraint(equalToConstant: 70),
            
            nameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 16),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            
            phoneLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 16),
            phoneLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8)
        ])
    }
}
