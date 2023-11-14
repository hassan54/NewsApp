//
//  LoadingHelper.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import AMProgressHUD
import UIKit

class LoadingHelper {

  private init() {}

  static func show() {
    AMProgressHUD.show()
  }

  static func dismiss() {
    AMProgressHUD.dismiss()
  }

  static func setup() {
    AMProgressHUD.options.imageName = "loading"
  }

}
