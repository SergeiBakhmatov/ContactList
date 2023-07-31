//
//  DetailContactViewController.swift
//  ContactList
//
//  Created by Alexey Efimov on 16.03.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit
import AlamofireImage

final class DetailContactViewController: UIViewController {
    
    @IBOutlet var userImageView: UIImageView! 
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setValues(with: user)
    }
    
    override func viewWillLayoutSubviews() {
        userImageView.layer.cornerRadius = userImageView.bounds.height / 2
    }
    
    private func setValues(with user: User) {
        firstNameLabel.text = user.name.first
        lastNameLabel.text = user.name.last
        
        guard let imageURL = URL(string: user.picture.large) else { return }
        userImageView.af.setImage(withURL: imageURL)
        
    }
}
