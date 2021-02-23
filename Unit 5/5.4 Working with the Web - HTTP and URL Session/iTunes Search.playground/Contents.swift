import UIKit

import PlaygroundSupport

//Playground still works without the need to set needsIndefiniteExecution to true
//PlaygroundPage.current.needsIndefiniteExecution = true

extension URL {
    func withQueries(_ queries:[String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map {
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}

let query: [String: String] = [
    "term": "adele",
    "media": "music"
]

let baseURL = URL(string: "https://itunes.apple.com/search?")!

let url = baseURL.withQueries(query)!

let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    if let data = data, let string = String(data: data, encoding: .utf8) {
        print(string)
    }
//    PlaygroundPage.current.finishExecution()
}

task.resume()
