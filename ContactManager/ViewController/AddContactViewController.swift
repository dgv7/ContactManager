//
//  AddContactViewController.swift
//  ContactManager
//
//  Created by 김동건 on 7/19/24.
//

import Foundation
import UIKit

class AddContactViewController: UIViewController {
    
    let profileImageView = UIImageView()
    let nameTextView = UITextView()
    let phoneTextView = UITextView()
    let generateImageButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        
        // Navigation title
        navigationItem.title = "연락처 추가"
        
        // Apply button
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "적용", style: .done, target: self, action: #selector(applyContact))
        
        // Back button
        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(back))
        navigationItem.leftBarButtonItem = backButton
        
        // Profile Image setup
        profileImageView.layer.cornerRadius = 50
        profileImageView.layer.borderWidth = 1
        profileImageView.layer.borderColor = UIColor.gray.cgColor
        profileImageView.clipsToBounds = true
        profileImageView.backgroundColor = .lightGray
        view.addSubview(profileImageView)
        
        // Generate Image Button setup
        generateImageButton.setTitle("랜덤 이미지 생성", for: .normal)
        generateImageButton.addTarget(self, action: #selector(generateRandomImage), for: .touchUpInside)
        view.addSubview(generateImageButton)
        
        // Name TextView setup
        nameTextView.layer.borderWidth = 1
        nameTextView.layer.borderColor = UIColor.lightGray.cgColor
        view.addSubview(nameTextView)
        
        // Phone TextView setup
        phoneTextView.layer.borderWidth = 1
        phoneTextView.layer.borderColor = UIColor.lightGray.cgColor
        view.addSubview(phoneTextView)
        
        // Layout constraints
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        generateImageButton.translatesAutoresizingMaskIntoConstraints = false
        nameTextView.translatesAutoresizingMaskIntoConstraints = false
        phoneTextView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            profileImageView.widthAnchor.constraint(equalToConstant: 100),
            profileImageView.heightAnchor.constraint(equalToConstant: 100),
            
            generateImageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            generateImageButton.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 16),
            
            nameTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            nameTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            nameTextView.topAnchor.constraint(equalTo: generateImageButton.bottomAnchor, constant: 32),
            nameTextView.heightAnchor.constraint(equalToConstant: 40),
            
            phoneTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            phoneTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            phoneTextView.topAnchor.constraint(equalTo: nameTextView.bottomAnchor, constant: 16),
            phoneTextView.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    @objc func generateRandomImage() {
        // Implement random image generation
    }
    
    @objc func applyContact() {
        // Implement contact saving functionality
    }
    
    @objc func back() {
        navigationController?.popViewController(animated: true)
    }
}
