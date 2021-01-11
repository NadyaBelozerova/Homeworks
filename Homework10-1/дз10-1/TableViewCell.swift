//
//  TableViewCell.swift
//  дз10-1
//
//  Created by Nadya Belozerova on 05.01.2021.
//

import UIKit



class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var photoAlbum: UICollectionView!
    
    @IBOutlet weak var nameOfAlbum: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        photoAlbum.delegate = self
        photoAlbum.dataSource = self
        
        
    }

}

extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myAlbums[photoAlbum.tag].imageGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = photoAlbum.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imageInAlbum.image = myAlbums[photoAlbum.tag].imageGallery[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 210, height: 140)
    }
}
