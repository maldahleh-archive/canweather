//
//  WeatherEndpoint.swift
//  canweather
//
//  Created by Mohammed Al-Dahleh on 2019-05-29.
//  Copyright © 2019 Codeovo Software Ltd. All rights reserved.
//

import Foundation

enum Weather {
    case cities
    case forecast(cityId: String, inFrench: Bool)
}

extension Weather: Endpoint {    
    var base: String {
        return "https://secret-depths-27430.herokuapp.com"
    }
    
    var path: String {
        switch self {
        case .cities:
            return "/cities"
        case .forecast:
            return "/forecast"
        }
    }
    
    var queryItems: [URLQueryItem]? {
        switch self {
        case .cities:
            return nil
        case .forecast(let cityId, let french):
            var items =  [
                URLQueryItem(name: "cityId", value: cityId)
            ]
            
            if french {
                items.append(URLQueryItem(name: "french", value: nil))
            }
            
            return items
        }
    }
}
