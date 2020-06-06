import UIKit
import PlaygroundSupport

// Part Two: JSON Serialization

PlaygroundPage.current.needsIndefiniteExecution = true

extension URL {
    
    func withQueries(_ queries: [String: String]) -> URL? {
        
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.flatMap { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}

struct StoreItem {
    
    var name: String
    var artist: String
    var description: String
    var kind: String
    var artworkURL: URL
    
    init?(json: [String: Any]) {
        
        guard let name = json["trackName"] as? String,
            let artist = json["artistName"] as? String,
            let kind = json["kind"] as? String,
            let artworkURLString = json["artworkUrl100"] as? String,
            let artworkURL = URL(string: artworkURLString) else { return nil }
        
        self.name = name
        self.artist = artist
        self.kind = kind
        self.artworkURL = artworkURL
        
        self.description = json["description"] as? String ?? json["longDescription"] as? String ?? ""
    }
}

func fetchItems(matching query: [String: String], completion: @escaping ([StoreItem]?) -> Void) {
    
    let baseURL = URL(string: "https://itunes.apple.com/search?")!
    
    guard let url = baseURL.withQueries(query) else {
        
        completion(nil)
        print("Unable to build URL with supplied queries.")
        return
    }
    
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        
        if let data = data,
            let rawJSON = try? JSONSerialization.jsonObject(with: data),
            let json = rawJSON as? [String: Any],
            let resultsArray = json["results"] as? [[String: Any]] {
            
            let storeItems = resultsArray.flatMap { StoreItem(json: $0) }
            completion(storeItems)
            
        } else {
            print("Either no data was returned, or data was not serialized.")
            
            completion(nil)
            return
        }
    }
    
    task.resume()
}


let query: [String: String] = [
    "term": "Inside Out 2015",
    "media": "movie",
    "lang": "en_us",
    "limit": "10"
]

fetchItems(matching: query) { (items) in
    print(items)
}