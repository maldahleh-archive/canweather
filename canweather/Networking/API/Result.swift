//
//  Result.swift
//  canweather
//
//  Created by Mohammed Al-Dahleh on 2019-05-29.
//  Copyright © 2019 Codeovo Software Ltd. All rights reserved.
//

enum Result<T, U> where U: Error {
    case success(T)
    case failure(U)
}
