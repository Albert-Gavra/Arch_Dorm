//
//  MyCollectionViewCell.swift
//  Arch_dorm
//
//  Created by Albert Gavra on 09/06/22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var nameDorm: UILabel!
    
    @IBOutlet weak var addressDorm: UILabel!
    
    func setup(with data: Data) {
        nameDorm.text = data.name
        addressDorm.text = data.address
    }
    
    public func configure(with image: UIImage) {
        Image.image = image
    }
    
}
