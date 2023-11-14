//
//  UIView+Animations.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import UIKit

extension UIView {

  func showAllViews() {
    UIView.animate(withDuration: 0.5) {
      self.subviews.forEach({ guard $0.tag != -1 else { return }; $0.alpha = 1 })
    }
  }

  func hideAllViews() {
    subviews.forEach({ guard $0.tag != -1 else { return }; $0.alpha = 0 })
  }

}
