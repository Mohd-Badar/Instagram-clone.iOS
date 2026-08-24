//
//  ReelsViewController.swift
//  Demo-app
//
//  Created by Mohd Badar on 24/08/26.
//

import UIKit

class ReelsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return reels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ReelsCollectionViewCell
            
            cell.rellsCell.image = UIImage(named: reels[indexPath.row])
            
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width,
                      height: collectionView.frame.height)
    }
    
    var reels = ["user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let nib = UINib(nibName: "ReelsCollectionViewCell", bundle: nil)
            collectionView.register(nib, forCellWithReuseIdentifier: "cell")
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
            layout.minimumLineSpacing = 0
            layout.minimumInteritemSpacing = 0
        }
        
        collectionView.isPagingEnabled = true
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.showsVerticalScrollIndicator = false
        collectionView.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
    
}

