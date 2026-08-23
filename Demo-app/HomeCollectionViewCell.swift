//
//  HomeCollectionViewCell.swift
//  Demo-app
//
//  Created by Mohd Badar on 13/08/26.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var storyImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        storyImage.layer.cornerRadius = storyImage.frame.height / 2
        storyImage.clipsToBounds = true
        storyImage.layer.borderWidth = 2
        storyImage.layer.borderColor = UIColor.systemPink.cgColor
        // Initialization code
    }

}
