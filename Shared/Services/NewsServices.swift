//
//  NewsServices.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import UIKit

public class NewsServices {

  private let dataManager: DataManager

  public init(dataManager: DataManager) {
    self.dataManager = dataManager
  }

  public func getTopHeadlines(complition: @escaping ([NewsViewModel]?, Error?) -> Void) {

    dataManager.fetch(endpoint: .topHeadlines) { (error, topHeadlines: TopHeadlines?) in
      guard error == nil else {
        complition(nil, error)
        return
      }
      complition(topHeadlines?.articles?.map(NewsViewModel.init), nil)
    }

  }

}

private struct TopHeadlines: Decodable {
  let status: String?
  let totalResults: Int?
  let articles: [News]?
}
