//
//  ContactListViewController.swift
//  ContactManager
//
//  Created by 김동건 on 7/19/24.
//

import Foundation
import UIKit

class ContactListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tableView = UITableView()
    let addButton = UIButton(type: .system)
    
    var contacts = [
        (name: "name", phone: "010-0000-0000"),
        (name: "name", phone: "010-0000-0000"),
        (name: "name", phone: "010-0000-0000"),
        (name: "name", phone: "010-0000-0000"),
        (name: "name", phone: "010-0000-0000")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        
        // Navigation title
        navigationItem.title = "친구 목록"
        
        // Add button
        addButton.setTitle("추가", for: .normal)
        addButton.addTarget(self, action: #selector(addContact), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: addButton)
        
        // TableView setup
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(ContactTableViewCell.self, forCellReuseIdentifier: "ContactCell")
        tableView.rowHeight = 80
        view.addSubview(tableView)
        
        // Layout constraints
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    @objc func addContact() {
        let addContactVC = AddContactViewController()
        navigationController?.pushViewController(addContactVC, animated: true)
    }
    
    // UITableViewDataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as! ContactTableViewCell
        let contact = contacts[indexPath.row]
        cell.nameLabel.text = contact.name
        cell.phoneLabel.text = contact.phone
        return cell
    }
}
