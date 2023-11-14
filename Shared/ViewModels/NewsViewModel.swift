//
//  NewsViewModel.swift
//  Shared
//

//  Created by Hassan Masood on 14/11/2023.
//

import UIKit

public class NewsViewModel {

  public var title: String?
  public var description: String?
  public var url: String?
  public var urlToImage: String?
  public var publishedAt: String?
  public var content: String?
  public var author: String?
  public var sourceID: String?
  public var sourceName: String?

  public init(news: News) {
    title = news.title
    description = news.description
    urlToImage = news.urlToImage
    url = news.url
    publishedAt = news.publishedAt
    content = news.content
    author = news.author != nil ? news.author : news.source?.name
    sourceID = news.source?.id
    sourceName = news.source?.name
  }

}
