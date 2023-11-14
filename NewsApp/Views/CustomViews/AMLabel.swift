//
//  AMLabel.swift
//
//  Created by Hassan Masood on 14/11/2023.
//

import Shared
import UIKit

@IBDesignable
class AMLabel: UILabel {

  // MARK: - Parameters

  @IBInspectable var isOldSchool: Bool = false {
    didSet {
      updateFont()
    }
  }
  @IBInspectable var isBold: Bool = false {
    didSet {
      updateFont()
    }
  }
  @IBInspectable var isLight: Bool = false {
    didSet {
      updateFont()
    }
  }

  // MARK: - View lifecycle

  override func awakeFromNib() {
    super.awakeFromNib()

    updateFont()
  }

  private func updateFont() {
    var fontName = ""
    if isBold {
      fontName = Theme.Fonts.bold
    } else if isOldSchool {
      fontName = Theme.Fonts.oldSchool
    } else {
      fontName = Theme.Fonts.light
    }

    font = UIFont(name: fontName, size: font.pointSize)
  }

}
