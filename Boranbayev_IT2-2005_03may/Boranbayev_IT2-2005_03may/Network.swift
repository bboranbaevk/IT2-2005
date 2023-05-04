//
//  Network.swift
//  Boranbayev_IT2-2005_03may
//
//  Created by Бекбол Боранбаев on 03.05.2023.
//
import Foundation
import Alamofire

class NetworkAL {
    let url = "https://api.nationalize.io/?name=aigerim"


    func DecoderAL(completion: @escaping ([NamesSiu])->()){
        AF.request(url, method: .get).responseData { response in
            if let  err = response.error {
                print(err.localizedDescription)
                print("Error")
            } else{
                if let data = response.data{
                    let responseData = try? JSONDecoder().decode([NamesSiu].self, from: data)
                    completion(responseData ?? [])
                    print("Success")
                    print("Received data:", responseData as Any)
                }
            }
        }
    }
}

