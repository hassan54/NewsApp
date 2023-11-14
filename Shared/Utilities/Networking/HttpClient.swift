//
//  HttpClient.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import UIKit

public struct HttpClient: Networking {

  public init() {}

  var sharedSession: URLSession { return URLSession.shared }

  public func request(endpoint: EndPoint, completion: @escaping (Error?, Data?) -> Void) {
    guard let url = URL(string: endpoint.url) else { return }
    var request = URLRequest(url: url)
    request.httpMethod = endpoint.httpMethod.rawValue
    let dataTask = sharedSession.dataTask(with: request) { data, _, error in
      DispatchQueue.main.async {
        guard error == nil else {
          completion(error, nil)
          return
        }
        guard let data = data else { completion(Errors.unknownError, nil); return }
        completion(nil, data)
      }
    }
    dataTask.resume()
  }

}
