//
//  NewCollectionViewController.swift
//  HomeWork_5
//
//  Created by Pavel on 18.12.2020.
//

import UIKit

class NewCollectionViewController: UICollectionViewController {
    @IBOutlet weak var newCollectionView: UICollectionView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newCollectionView.dataSource = self
    }
}

extension NewCollectionViewController : UICollectionViewDataSource {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    }
}
