//
//  ViewController.swift
//  Demo-app
//
//  Created by Mohd Badar on 12/08/26.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return notesImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "notesCollectionViewCell", for: indexPath) as! NotesCollectionViewCell
            
            cell.notesLabel.text = notesLabel[indexPath.row]
            cell.notesImage.image = UIImage(named: notesImage[indexPath.row])
            
            return cell
    }
    
    var notesImage = ["user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3"]
    var notesLabel = ["Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan", "Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan", "Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan", "Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageLabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = messageTableView.dequeueReusableCell(withIdentifier: "MessageTableViewCell", for: indexPath) as! MessageTableViewCell
        
        cell.messageLabel.text = messageLabel[indexPath.row]
        cell.messageImage.image = UIImage(named: messageImage[indexPath.row])
        
        return cell
    }
    
    var messageLabel = ["Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan", "Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan", "Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan", "Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan", "Mohd Badar", "Nikhil Kumar", "Naman Singh Chauhan"]
    
    var messageImage = ["user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3", "user1", "user2", "user3"]
   

    @IBOutlet weak var requestsView: UIView!
    @IBOutlet weak var generalView: UIView!
    @IBOutlet weak var primaryView: UIView!
    @IBOutlet weak var messageTableView: UITableView!
    @IBOutlet weak var notesCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        primaryView.layer.cornerRadius = 20
        requestsView.layer.cornerRadius = 20
        generalView.layer.cornerRadius = 20
        
        notesCollectionView.delegate = self
        notesCollectionView.dataSource = self
        
        messageTableView.delegate = self
        messageTableView.dataSource = self
           
        notesCollectionView.register(UINib(nibName: "NotesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "notesCollectionViewCell")
        
        messageTableView.register(UINib(nibName: "MessageTableViewCell", bundle: nil), forCellReuseIdentifier: "MessageTableViewCell")
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 70, height: 90)
        layout.minimumLineSpacing = 8

        notesCollectionView.collectionViewLayout = layout
        
        messageTableView.showsVerticalScrollIndicator = false
        
    }
        // Do any additional setup after loading the view.
}

