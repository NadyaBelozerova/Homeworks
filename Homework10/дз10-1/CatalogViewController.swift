//
//  CatalogViewController.swift
//  дз10-1
//
//  Created by Nadya Belozerova on 30.11.2020.
//

import UIKit

class CatalogViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var images = [UIImage(named: "image1"), UIImage(named: "image2"), UIImage(named: "image3"), UIImage(named: "image4"), UIImage(named: "image1"), UIImage(named: "image2"), UIImage(named: "image3"), UIImage(named: "image4")]
    
    var labels = ["Пуховик Black star 13", "Бомбер Bs Sketch", "Детская куртка", "Кепка", "Пуховик Black star 13", "Бомбер Bs Sketch", "Детская куртка", "Кепка"]
    
    var price = ["13500 руб", "3900 руб", "11500 руб", "2000 руб", "13500 руб", "3900 руб", "11500 руб", "2000 руб"]
    
    var newPrice = ["4900 руб", "2490 руб", "5000 руб", "1500 руб", "4900 руб", "2490 руб", "5000 руб", "1500 руб"]
    
    var discount = ["30%", "30%", "30%", "30%", "30%", "30%", "30%", "30%"]
    
}

extension CatalogViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CatalogCollectionViewCell
        cell.catalogImage.image = images[indexPath.row]
        cell.catalogLabel.text = labels[indexPath.row]
        cell.priceLabel.text = price[indexPath.row]
        cell.newPriceLabel.text = newPrice[indexPath.row]
        cell.discountLabel.text = discount[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (self.collectionView.frame.size.width - 40) / 2, height: 330)
        
    }
}
