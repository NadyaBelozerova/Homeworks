//
//  TableViewController.swift
//  дз10-1
//
//  Created by Nadya Belozerova on 05.01.2021.
//

import UIKit
struct Albums {
    var nameOfAlbum: String
    var imageGallery = [UIImage]()
}

var myAlbums = [
    Albums(nameOfAlbum: "Котики", imageGallery: [#imageLiteral(resourceName: "1-1"), #imageLiteral(resourceName: "1-2"), #imageLiteral(resourceName: "1-5"), #imageLiteral(resourceName: "1-3"), #imageLiteral(resourceName: "1-4")]),
    Albums(nameOfAlbum: "Люди", imageGallery: [#imageLiteral(resourceName: "2-1"), #imageLiteral(resourceName: "2-2"), #imageLiteral(resourceName: "2-4"), #imageLiteral(resourceName: "2-3"), #imageLiteral(resourceName: "2-5")]),
    Albums(nameOfAlbum: "Архитектура", imageGallery: [#imageLiteral(resourceName: "3-1"), #imageLiteral(resourceName: "3-3"), #imageLiteral(resourceName: "3-5"), #imageLiteral(resourceName: "3-4"), #imageLiteral(resourceName: "3-2")]),
    Albums(nameOfAlbum: "Пейзажи", imageGallery: [#imageLiteral(resourceName: "4-1"), #imageLiteral(resourceName: "4-2"), #imageLiteral(resourceName: "4-3"), #imageLiteral(resourceName: "4-4"), #imageLiteral(resourceName: "4-5")]),
    Albums(nameOfAlbum: "Мемы", imageGallery: [#imageLiteral(resourceName: "5-1"), #imageLiteral(resourceName: "5-2"), #imageLiteral(resourceName: "5-3"), #imageLiteral(resourceName: "5-4"), #imageLiteral(resourceName: "5-5")])
]


class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myAlbums.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.photoAlbum.tag = indexPath.row
        cell.nameOfAlbum.text = myAlbums[indexPath.row].nameOfAlbum
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 210
    }
    
}
