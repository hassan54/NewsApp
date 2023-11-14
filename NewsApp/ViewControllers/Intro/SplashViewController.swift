//
//  SplashViewController.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import UIKit

class SplashViewController: BaseViewController {

  // MARK: - Properties

  weak var delegate: SplashViewControllerDelegate?

  // MARK: - View Controller lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()

    nextPage()
  }

  private func nextPage() {
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
      self.delegate?.nextViewController()
    }
  }

}

// MARK: - SplashViewControllerDelegate

protocol SplashViewControllerDelegate: AnyObject {
  func nextViewController()
}
