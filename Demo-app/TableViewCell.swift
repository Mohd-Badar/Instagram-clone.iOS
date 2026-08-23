//
//  TableViewCell.swift
//  Demo-app
//
//  Created by Mohd Badar on 13/08/26.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var post: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        userImage.layer.cornerRadius = userImage.layer.bounds.height/2
        userImage.clipsToBounds = true
        post.layer.borderWidth = 1
        post.layer.borderColor = UIColor.lightGray.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
