//
//  APIClient.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import Foundation
import Alamofire

class APIClient {
    
    static func validateConnectInternet() -> Bool {
        if let network = NetworkReachabilityManager() {
            return network.isReachable
        }
        return false
    }
    
    static func getAllPokemonsKanto(completion: @escaping ([PokemonCodable]?)->Void) {
        AF.request(APIRouter.getAllPokemonsKanto as URLRequestConvertible)
            .logRequest()
            .responseJSON { (response) in
                    switch response.result {
                    case .success:
                        if let json = response.value,
                            let data = response.data {
                            print("Success JSON: \(json)")
                            do {
                                let resultPokemons = try JSONDecoder().decode(PokemonsCodable.self, from: data)
                                guard let pokemons = resultPokemons.results else {
                                    return completion(nil)
                                }
                                completion(pokemons)
                            } catch {
                                print("Error with Decodable: \(error)")
                                completion(nil)
                            }
                        }
                    case .failure(let error):
                        print("Error \(error)")
                        completion(nil)
                    }
            }
    }
}

extension DataRequest {
    public func logRequest() -> Self {
        self.responseData { response in
            print(response.description)
        }
        return self
    }
}
