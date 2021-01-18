//
//  TableViewCell.swift
//  дз10-1
//
//  Created by Nadya Belozerova on 05.01.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    private var album: Album?
    
    func update(_ album: Album) {
        self.album = album

      nameOfAlbum.text = album.name
      photoAlbum.reloadData()
    }
    
    @IBOutlet weak var photoAlbum: UICollectionView!
    
    @IBOutlet weak var nameOfAlbum: UILabel!

}

extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return myAlbums[photoAlbum.tag].images.count
  
   
  }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = photoAlbum.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imageInAlbum.image = myAlbums[photoAlbum.tag].images[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 210, height: 140)
    }
}

