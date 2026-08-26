//
//  NotesCollectionViewCell.swift
//  Demo-app
//
//  Created by Mohd Badar on 26/08/26.
//

import UIKit

class NotesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var notesLabel: UILabel!
    @IBOutlet weak var notesImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        notesImage.layer.cornerRadius = notesImage.frame.height / 2
        notesImage.clipsToBounds = true
        // Initialization code
    }

}
