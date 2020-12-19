//
//  CatalogViewController.swift
//  дз10-1
//
//  Created by Nadya Belozerova on 30.11.2020.
//

import UIKit

class CatalogViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    struct Product {
        let images: UIImage?
        let labels: String
        let price: String
        let newPrice: String
        var discount: String
    }
    
    var products = [
        Product(images: UIImage(named: "image1"), labels: "Пуховик Black star 13", price: "13500 руб", newPrice: "4900 руб", discount: "30%"),
        Product(images: UIImage(named: "image2"), labels: "Бомбер Bs Sketch", price: "3900 руб", newPrice: "2490 руб", discount: "30%"),
        Product(images: UIImage(named: "image3"), labels: "Детская куртка", price: "11500 руб", newPrice: "5000 руб", discount: "30%"),
        Product(images: UIImage(named: "image4"), labels: "Кепка", price: "2000 руб", newPrice: "1500 руб", discount: "30%"),
        Product(images: UIImage(named: "image1"), labels: "Пуховик Black star 13", price: "13500 руб", newPrice: "4900 руб", discount: "30%"),
        Product(images: UIImage(named: "image2"), labels: "Бомбер Bs Sketch", price: "3900 руб", newPrice: "2490 руб", discount: "30%"),
        Product(images: UIImage(named: "image3"), labels: "Детская куртка", price: "11500 руб", newPrice: "5000 руб", discount: "30%"),
        Product(images: UIImage(named: "image4"), labels: "Кепка", price: "2000 руб", newPrice: "1500 руб", discount: "30%")
        
    ]
}

extension CatalogViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CatalogCollectionViewCell
        
        let catalogItem = products[indexPath.row]
        
        cell.catalogImage.image = catalogItem.images
        cell.catalogLabel.text = catalogItem.labels
        cell.priceLabel.text = catalogItem.price
        cell.newPriceLabel.text = catalogItem.newPrice
        cell.discountLabel.text = catalogItem.discount
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (self.collectionView.frame.size.width - 40) / 2, height: 330)
        
    }
}
