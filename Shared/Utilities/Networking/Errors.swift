//
//  Errors.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import UIKit

enum Errors {

  public static var unknownError = NSError(domain: "error.unknown", code: -20, userInfo: ["": ""])
  public static var badURL = NSError(domain: "error.badurl", code: -10, userInfo: ["": ""])
}
