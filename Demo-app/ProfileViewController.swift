//
//  ProfileViewController.swift
//  Demo-app
//
//  Created by Mohd Badar on 23/08/26.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var dashboardView: UIView!
    @IBOutlet weak var profilePhoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePhoto.layer.cornerRadius = profilePhoto.frame.height / 2
        profilePhoto.clipsToBounds = true
        profilePhoto.layer.borderWidth = 2
        profilePhoto.layer.borderColor = UIColor.systemPink.cgColor
        
        dashboardView.layer.cornerRadius = 10

        // Do any additional setup after loading the view.
    }
    



}
