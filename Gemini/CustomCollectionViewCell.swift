//
//  CustomCollectionViewCell.swift
//  Gemini
//
//  Created by Deepak Rout on 10/1/21.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var countryNameLabel: UILabel!
    
    func conigure(with countryName: String) {
        countryNameLabel.text = countryName
    }
}
