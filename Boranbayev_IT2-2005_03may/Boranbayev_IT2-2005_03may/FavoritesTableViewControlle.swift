//
//  FavoritesTableViewControlle.swift
//  Boranbayev_IT2-2005_03may
//
//  Created by Бекбол Боранбаев on 03.05.2023.
//

import Foundation
import UIKit

class FavoritesTableViewController: UITableViewController {
    var favorites: [Name] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favorites.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let name = favorites[indexPath.row]
        cell.textLabel?.text = "\(name.firstName) \(name.lastName)"
        return cell
    }
    
    func addFavorite(_ name: Name) {
        favorites.append(name)
        tableView.reloadData()
    }
}
