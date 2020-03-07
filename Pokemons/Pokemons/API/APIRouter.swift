//
//  APIRouter.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import Foundation
import Alamofire

enum APIRouter: URLRequestConvertible {
    
    case getAllPokemonsKanto
    
    // MARK: - HTTPMethod
    private var method: HTTPMethod {
        switch self {
        case .getAllPokemonsKanto:
            return .get
        }
    }
    
    // MARK: - Path
    private var path: String {
        switch self {
        case .getAllPokemonsKanto:
            return URLConstants.allPokemonsKanto.rawValue
        }
    }
    
    // MARK: - Parameters
    private var parameters: Parameters? {
        switch self {
        case .getAllPokemonsKanto:
            return [
                "limit": 151
            ]
        }
    }
    
    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        var url: URL
        var urlRequest: URLRequest
        
        url = returnUrl(path: path)
        
        urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        
        if let parameters = parameters {
            return try URLEncoding.queryString.encode(urlRequest, with: parameters)
        }
        
        return urlRequest
    }
}
