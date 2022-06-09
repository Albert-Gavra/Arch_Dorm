//
//  ViewController.swift
//  Arch_dorm
//
//  Created by Albert Gavra on 08/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    let image = ["Image1", "Image2", "Image3", "Image4"]

    @IBOutlet weak var ImageFeat: UIImageView!
    
    @IBOutlet weak var ListDorm: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let n = Int.random(in: 0...3)
        
        ImageFeat.image = UIImage(named: image[n])
        
        ListDorm.delegate = self
        ListDorm.dataSource = self
//        ListDorm.collectionViewLayout = UICollectionViewLayout()
        
    }
    
}

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return datas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        
        cell.setup(with: datas[indexPath.row])
        cell.configure(with: UIImage(named: image[indexPath.row])!)
        
        return cell
    }
}

//extension ViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 300, height: 200)
//    }
//}

