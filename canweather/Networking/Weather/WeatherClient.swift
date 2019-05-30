//
//  WeatherClient.swift
//  canweather
//
//  Created by Mohammed Al-Dahleh on 2019-05-29.
//  Copyright © 2019 Codeovo Software Ltd. All rights reserved.
//

import Foundation

class WeatherClient: APIClient {
    let session = URLSession(configuration: .default)
    let jsonDecoder = JSONDecoder()
    
    // MARK: - Weather
    typealias CitiesCompletionHandler = (Result<[City], APIError>) -> Void
    
    func cities(completion: @escaping CitiesCompletionHandler) {
        fetchWith(Weather.cities.request, decode: [City].self, completion: completion)
    }
}
