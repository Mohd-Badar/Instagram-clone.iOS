//
//  ReelsCollectionViewCell.swift
//  Demo-app
//
//  Created by Mohd Badar on 24/08/26.
//

import UIKit

class ReelsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var rellsCell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        rellsCell.contentMode = .scaleAspectFill
        rellsCell.clipsToBounds = true
        // Initialization code
    }

}
