//
//  ViewController.swift
//  HomeWork#6.3(2pt)
//
//  Created by Эмир Кармышев on 26/1/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CastomCell", for: indexPath) as! CastomCell
        
        cell.backgroundColor = .systemPink
        cell.label.text = String(indexPath.row)
        
        return cell
    }
    
    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.delegate = self
        collection.dataSource = self
    }


}

