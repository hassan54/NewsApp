//
//  EndPoint.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import UIKit

public enum EndPoint {
  case topHeadlines
  case everything
  case sources
}

extension EndPoint {
  var url: String {
    var url = "https://newsapi.org/v2/"
    switch self {
    case .topHeadlines:
      url += "top-headlines"
    case .everything:
      url += "everything"
    case .sources:
      url += "sources"
    }

    if httpMethod == .get {
      url = "\(url)?\(queryParameters)"
    }

    return url
  }

  var parameters: [String: Any] {
    var params = ["apiKey": Obfuscator.deObfuscate("dJHKGHas34#$DFSAdas", Constants.Keys.apiKey)]
    switch self {
    case .topHeadlines:
      params["country"] = LocalizationHelper.isRightToLeft ? "ae" : "us"
    case .everything, .sources:
      break
    }

    return params
  }

  var httpMethod: HttpMethod {
    switch self {
    case .topHeadlines, .everything, .sources:
      return .get
    }
  }

  var queryParameters: String {
    return parameters.map { "\($0.key)=\($0.value)" }.joined(separator: "&")
  }
}

enum HttpMethod: String {
  case get
  case post
}

extension HttpMethod {
  var name: String {
    return self.rawValue
  }
}
