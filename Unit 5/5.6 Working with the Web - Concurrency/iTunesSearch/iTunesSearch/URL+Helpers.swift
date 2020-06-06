//
//  URL+Helpers.swift
//  iTunesSearch
//
//  Created by Michael Westerby on 06/06/2020.
//  Copyright © 2020 Caleb Hicks. All rights reserved.
//

import Foundation

extension URL {
    func withQueries(_ queries:[String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map {
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}
