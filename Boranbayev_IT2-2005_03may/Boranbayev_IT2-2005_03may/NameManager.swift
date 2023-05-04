//
//  NameManager.swift
//  Boranbayev_IT2-2005_03may
//
//  Created by Бекбол Боранбаев on 03.05.2023.
//

import Foundation


class NameManager {
    var names: [Name] = [
        Name(firstName: "Bekbol", lastName: "Boranbayev"),
        Name(firstName: "Aibar", lastName: "Kaliev"),
        Name(firstName: "Ramazan", lastName: "Kalabay") ]
    
    var favoritesTableViewController: FavoritesTableViewController?

    

        func addName(_ name: Name) {
            // Добавление имени в список
            favoritesTableViewController?.addFavorite(name)
        }
    }

