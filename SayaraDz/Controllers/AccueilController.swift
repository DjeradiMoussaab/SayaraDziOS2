//
//  AccueilController.swift
//  SayaraDz
//
//  Created by Mac on 3/4/19.
//  Copyright © 2019 mossab. All rights reserved.
//

import UIKit

class MarquesSuiviesCell: UICollectionViewCell  {
    @IBOutlet weak var noteLabel: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var carName: UILabel!
    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
}

class NouveautesCell: UICollectionViewCell  {
    @IBOutlet weak var noteLabel: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var carName: UILabel!
    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
}


class AccueilController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var marquesSuiviesCollectionView: UICollectionView!
    
    @IBOutlet weak var nouveautesCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        nouveautesCollectionView.delegate = self
        nouveautesCollectionView.dataSource = self
        marquesSuiviesCollectionView.delegate = self
        marquesSuiviesCollectionView.dataSource = self
    }
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    var items = ["New Release !", "Old", "Used", "Good"]
    var names = ["SKODA fabia", "SEAT ibiza", "AUDI Q3", "PORSCHE 911"]
    var descriptions = ["So many things are waiting for you", "Haha this is a good one my friend", "take it or leave it offre", "it's not a porsche it's a proschaaaa"]

    
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print(indexPath.row)
        if (collectionView.tag == 0) {
            let marquesSuiviesCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MarquesSuiviesCell", for: indexPath as IndexPath) as! MarquesSuiviesCell
            marquesSuiviesCell.noteLabel.text = items[indexPath.row]
            marquesSuiviesCell.descriptionLabel.text = descriptions[indexPath.row]
            marquesSuiviesCell.carImage.image = UIImage(named: "arona")
            marquesSuiviesCell.carName.text = names[indexPath.row]
            marquesSuiviesCell.nameView.layer.borderWidth = CGFloat(1)
            marquesSuiviesCell.nameView.layer.borderColor = UIColor(red:0.85, green:0.85, blue:0.85, alpha:1.0).cgColor
            marquesSuiviesCell.layer.borderWidth = CGFloat(1)
            marquesSuiviesCell.layer.borderColor = UIColor(red:0.85, green:0.85, blue:0.85, alpha:1.0).cgColor
            marquesSuiviesCell.layer.cornerRadius = 5.0
            return marquesSuiviesCell
        } else {
            let nouveautesCell = collectionView.dequeueReusableCell(withReuseIdentifier: "NouveautesCell", for: indexPath as IndexPath) as! NouveautesCell
            nouveautesCell.noteLabel.text = items[indexPath.row]
            nouveautesCell.descriptionLabel.text = descriptions[indexPath.row]
            nouveautesCell.carImage.image = UIImage(named: "arona")
            nouveautesCell.carName.text = names[indexPath.row]
            nouveautesCell.nameView.layer.borderWidth = CGFloat(1)
            nouveautesCell.nameView.layer.borderColor = UIColor(red:0.85, green:0.85, blue:0.85, alpha:1.0).cgColor
            nouveautesCell.layer.borderWidth = CGFloat(1)
            nouveautesCell.layer.borderColor = UIColor(red:0.85, green:0.85, blue:0.85, alpha:1.0).cgColor
            nouveautesCell.layer.cornerRadius = 5.0
            return nouveautesCell
        }

    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }


}
