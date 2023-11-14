//
//  DataManager.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import UIKit

public class DataManager: Fetcher {

  var networking: Networking

  public init(networking: Networking) {
    self.networking = networking
  }

  public func fetch<T>(endpoint: EndPoint, completion: @escaping (Error?, T?) -> Void) where T: Decodable {
    networking.request(endpoint: endpoint, completion: { (error, data) in
      guard error == nil else {
        completion(error, nil)
        return
      }

      guard let data = data else { completion(Errors.unknownError, nil); return }
      let decoder = JSONDecoder()
      guard let item = try? decoder.decode(T.self, from: data) else {
        completion(Errors.unknownError, nil)
        return
      }
      completion(nil, item)
    })
  }

  public func fetch<T>(endpoint: EndPoint, completion: @escaping (Error?, [T]?) -> Void) where T: Decodable {
    networking.request(endpoint: endpoint, completion: { (error, data) in
      guard error == nil else {
        completion(error, nil)
        return
      }

      guard let data = data else { completion(Errors.unknownError, nil); return }
      let decoder = JSONDecoder()
      do {
        let items = try decoder.decode([T].self, from: data)
        completion(nil, items)
      } catch let error {
        completion(error, nil)
      }
    })
  }

}
