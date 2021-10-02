//
//  CustomCollectionViewController.swift
//  Gemini
//
//  Created by Deepak Rout on 10/1/21.
//

import Foundation
import UIKit

class CustomCollectionViewController: UICollectionViewController {
    
    let dataSource: [String] = ["USA","Brazil","China","United Kingdom","Japan", "Maxico","India"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CustomCollectionViewCell {
            countryCell.conigure(with: dataSource[indexPath.row])
            cell = countryCell
        }
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected Contry: \(dataSource[indexPath.row])")
    }
}
