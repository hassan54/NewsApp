//
//  Networking.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import UIKit

public protocol Networking {

  func request(endpoint: EndPoint, completion: @escaping (Error?, Data?) -> Void)
}

public protocol Fetcher {

  func fetch<T: Decodable>(endpoint: EndPoint, completion: @escaping (Error?, T?) -> Void)
  func fetch<T: Decodable>(endpoint: EndPoint, completion: @escaping (Error?, [T]?) -> Void)
}
