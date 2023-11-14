//
//  IntroCoordinator.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import UIKit

class IntroCoordinator: Coordinator {

  // MARK: - Private Properties

  private let window: UIWindow?
  private lazy var introViewController: IntroViewController? = {
    return StoryboardUtil.viewController(storyboard: .intro)
  }()

  // MARK: - init

  init(window: UIWindow?) {
    self.window = window
  }

  // MARK: - Coordinator

  override func start() {
    guard let window = window, let introViewController = introViewController else {
      return
    }
    introViewController.modalTransitionStyle = .crossDissolve
    introViewController.delegate = self
    window.rootViewController = introViewController
  }

  override func finish() {
    introViewController = nil
  }

}

// MARK: - IntroViewControllerDelegate

extension IntroCoordinator: IntroViewControllerDelegate {
  func nextViewController() {
    let mainCoordinator = MainCoordinator(presenter: window)
    addChild(mainCoordinator)
    mainCoordinator.start()
    finish()
  }
}
