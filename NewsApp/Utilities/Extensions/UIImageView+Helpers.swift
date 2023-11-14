//
//  ImageView.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import SDWebImage
import UIKit

extension UIImageView {

  func setImage(with url: String?, placeholderImage: UIImage) {
    if let imageLink = url, let url = URL(string: imageLink) {
      self.sd_setImage(with: url, placeholderImage: placeholderImage)
    } else {
      image = placeholderImage
    }
  }

}
