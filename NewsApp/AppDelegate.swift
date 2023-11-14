//
//  AppDelegate.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import Shared
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  private var appCoordinator: AppCoordinator?

  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    setup()
    start()

    return true
  }

  private func setup() {
    LocalizationHelper.defaultLanguage = .en

    Theme.setAppStyle()

    LoadingHelper.setup()
  }

  private func start() {
    let window = UIWindow(frame: UIScreen.main.bounds)
    self.window = window
    appCoordinator = AppCoordinator(window: window)
    appCoordinator?.start()
  }

  func applicationWillResignActive(_ application: UIApplication) { }

  func applicationDidEnterBackground(_ application: UIApplication) { }

  func applicationWillEnterForeground(_ application: UIApplication) { }

  func applicationDidBecomeActive(_ application: UIApplication) { }

  func applicationWillTerminate(_ application: UIApplication) { }

}
