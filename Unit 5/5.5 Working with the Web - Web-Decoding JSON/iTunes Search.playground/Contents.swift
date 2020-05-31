import UIKit

import PlaygroundSupport
import Foundation

PlaygroundPage.current.needsIndefiniteExecution = true

extension URL {
    func withQueries(_ queries:[String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map {
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}

struct StoreItem: Codable {
    var name: String
    var artist: String
    var kind: String
    var artworkURL: URL
    var description: String
    
    enum CodingKeys: String, CodingKey {
        case name = "trackName"
        case artist = "artistName"
        case kind
        case artworkURL = "artworkUrl30"
        case description
    }
    
    enum AdditionalKeys: String, CodingKey {
        case longDescription
    }
    
    init(from decoder: Decoder) throws {
        let valueContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try valueContainer.decode(String.self, forKey: CodingKeys.name)
        self.artist = try valueContainer.decode(String.self, forKey: CodingKeys.artist)
        self.kind = try valueContainer.decode(String.self, forKey: CodingKeys.kind)
        self.artworkURL = try valueContainer.decode(URL.self, forKey: CodingKeys.artworkURL)
        
        if let description = try? valueContainer.decode(String.self, forKey: CodingKeys.description) {
            self.description = description
        } else {
            let additionalValues = try decoder.container(keyedBy: AdditionalKeys.self)
            self.description = (try? additionalValues.decode(String.self, forKey: AdditionalKeys.longDescription)) ?? ""
        }
    }
}

struct StoreItems: Codable {
    let results: [StoreItem]
}


func fetchItems(matching query: [String: String], completion: @escaping([StoreItem]?) -> Void) {
    let baseURL = URL(string: "https://itunes.apple.com/search?")!

    guard let url = baseURL.withQueries(query) else {
        completion(nil)
        print("Unable to build URL with supplied queries.")
        return
    }

    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        let decoder = JSONDecoder()
        if let data = data,
            let storeItems = try? decoder.decode(StoreItems.self, from: data) {
            completion(storeItems.results)
        } else {
            print("Either no data was returned, or data was not serialized.")
            completion(nil)
            return
        }

    }

    task.resume()

}

let query: [String: String] = [
    "term": "adele",
    "media": "music"
]

fetchItems(matching: query) {(items) in
    if let items = items {
        print(items)
    }
}
