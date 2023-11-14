//
//  IntroViewController.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import AVKit
import UIKit

class IntroViewController: BaseViewController {

  // MARK: - IBOutlets

  @IBOutlet private weak var aboutLabel: AMLabel!

  // MARK: - Properties

  weak var delegate: IntroViewControllerDelegate?

  // MARK: - View Controller lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()

    view.hideAllViews()

    aboutLabel.setTextWithTypeAnimation(typedText: "intro_about_text".localize)
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    view.showAllViews()
  }

  // MARK: - IBActions

  @IBAction func letsGo(_ sender: Any) {
    delegate?.nextViewController()
  }

}

// MARK: - IntroViewControllerDelegate

protocol IntroViewControllerDelegate: AnyObject {
  func nextViewController()
}
