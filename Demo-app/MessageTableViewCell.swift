//
//  MessageTableViewCell.swift
//  Demo-app
//
//  Created by Mohd Badar on 26/08/26.
//

import UIKit

class MessageTableViewCell: UITableViewCell {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        messageImage.layer.cornerRadius = messageImage.frame.height / 2
        messageImage.clipsToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
