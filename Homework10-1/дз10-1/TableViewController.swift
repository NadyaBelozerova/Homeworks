//
//  TableViewController.swift
//  дз10-1
//
//  Created by Nadya Belozerova on 05.01.2021.
//

import UIKit

struct Album {
    let name: String
    var images: [UIImage] = []
}





class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var myAlbums = [
        Album(name: "Котики", images: [#imageLiteral(resourceName: "1-1"), #imageLiteral(resourceName: "1-2"), #imageLiteral(resourceName: "1-5"), #imageLiteral(resourceName: "1-3"), #imageLiteral(resourceName: "1-4")]),
        Album(name: "Люди", images: [#imageLiteral(resourceName: "2-1"), #imageLiteral(resourceName: "2-2"), #imageLiteral(resourceName: "2-4"), #imageLiteral(resourceName: "2-3"), #imageLiteral(resourceName: "2-5")]),
        Album(name: "Архитектура", images: [#imageLiteral(resourceName: "3-1"), #imageLiteral(resourceName: "3-3"), #imageLiteral(resourceName: "3-5"), #imageLiteral(resourceName: "3-4"), #imageLiteral(resourceName: "3-2")]),
        Album(name: "Пейзажи", images: [#imageLiteral(resourceName: "4-1"), #imageLiteral(resourceName: "4-2"), #imageLiteral(resourceName: "4-3"), #imageLiteral(resourceName: "4-4"), #imageLiteral(resourceName: "4-5")]),
        Album(name: "Мемы", images: [#imageLiteral(resourceName: "5-1"), #imageLiteral(resourceName: "5-2"), #imageLiteral(resourceName: "5-3"), #imageLiteral(resourceName: "5-4"), #imageLiteral(resourceName: "5-5")])
    ]
    
    
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myAlbums.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.photoAlbum.tag = indexPath.row
        cell.update(myAlbums[indexPath.row])
         
        
/*  let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        cell.photoAlbum.tag = indexPath.row
        cell.nameOfAlbum.text = myAlbums[indexPath.row].name
         */
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 210
    }
    
}
