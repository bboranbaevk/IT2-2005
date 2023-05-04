//
//  Names.swift
//  Boranbayev_IT2-2005_03may
//
//  Created by Бекбол Боранбаев on 03.05.2023.
//

import Foundation
import UIKit

struct Person {
    var name: String
    var isFavorite: Bool
}

    

   
    

    private enum CodingKeys: String, CodingKey {
        case Name = "Name"
       
    }
    
    func loadImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            completion(UIImage(data: data))
        }.resume()
    }



