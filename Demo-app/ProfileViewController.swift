//
//  ProfileViewController.swift
//  Demo-app
//
//  Created by Mohd Badar on 23/08/26.
//

import UIKit

class ProfileViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                            cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileCollectionViewCell", for: indexPath) as! ProfileCollectionViewCell
            
           cell.postImage.image = posts[indexPath.row]
            
            return cell
        }
    
    
    var posts = [ UIImage(named: "post1"), UIImage(named: "post2"), UIImage(named: "post3"),
                  UIImage(named: "post3"), UIImage(named: "post1"), UIImage(named: "post2"),
                  UIImage(named: "post2"), UIImage(named: "post3"), UIImage(named: "post1"),
                  UIImage(named: "post1"), UIImage(named: "post2"), UIImage(named: "post3"),
                  UIImage(named: "post3"), UIImage(named: "post1"), UIImage(named: "post2"),
                  UIImage(named: "post2"), UIImage(named: "post3"), UIImage(named: "post1"),
                  UIImage(named: "post1"), UIImage(named: "post2"), UIImage(named: "post3"),
                  UIImage(named: "post3"), UIImage(named: "post1"), UIImage(named: "post2"),
                  UIImage(named: "post2"), UIImage(named: "post3"), UIImage(named: "post1"),
                  UIImage(named: "post1"), UIImage(named: "post2"), UIImage(named: "post3"),
                  UIImage(named: "post3"), UIImage(named: "post1"), UIImage(named: "post2"),
                  UIImage(named: "post2"), UIImage(named: "post3"), UIImage(named: "post1")]
    

    @IBOutlet weak var profileCollectionView: UICollectionView!
    @IBOutlet weak var dashboardView: UIView!
    @IBOutlet weak var profilePhoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePhoto.layer.cornerRadius = profilePhoto.frame.height / 2
        profilePhoto.clipsToBounds = true
        profilePhoto.layer.borderWidth = 2
        profilePhoto.layer.borderColor = UIColor.systemPink.cgColor
        dashboardView.layer.cornerRadius = 10
        
        profileCollectionView.delegate = self
        profileCollectionView.dataSource = self
        
        profileCollectionView.register (
            UINib(nibName: "ProfileCollectionViewCell", bundle: nil),
            forCellWithReuseIdentifier: "ProfileCollectionViewCell")
        
        if let layout = profileCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.minimumInteritemSpacing = 1
            layout.minimumLineSpacing = 1
            layout.sectionInset = .zero
        }
        
        profileCollectionView.showsVerticalScrollIndicator = false
        
        // Do any additional setup after loading the view.
    }

}

extension ProfileViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {

        let numberOfColumns: CGFloat = 3
        let spacing: CGFloat = 1

        let totalSpacing = (numberOfColumns - 1) * spacing
        let width = (collectionView.frame.width - totalSpacing) / numberOfColumns

        return CGSize(width: width, height: width)
    }
}
