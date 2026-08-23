//
//  HomeViewController.swift
//  Demo-app
//
//  Created by Mohd Badar on 13/08/26.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return storylabel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storyCell", for: indexPath) as! HomeCollectionViewCell
            
            cell.storyLabel.text = storylabel[indexPath.row]
            cell.storyImage.image = UIImage(named: storyImage[indexPath.row])
            
            return cell
    }
    
    var storyImage = ["user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3"]
    var storylabel = ["Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan", "Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan", "Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan", "Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return label.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.nameLabel.text = label[indexPath.row]
        cell.userImage.image = UIImage(named: image[indexPath.row])
        cell.post.image = UIImage(named: post[indexPath.row])
        
        return cell
    }
    
    var label = ["Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan", "Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan", "Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan"]
    var image = ["user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3"]
    var post = ["post1", "post2", "post3", "post1", "post2", "post3", "post1", "post2", "post3"]

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        collectionView.delegate = self
        collectionView.dataSource = self
           
        collectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "storyCell")
       
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")

        // Do any additional setup after loading the view.
    }

}
