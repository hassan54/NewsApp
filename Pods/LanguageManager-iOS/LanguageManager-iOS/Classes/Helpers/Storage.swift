//
//  Storage.swift
//  LanguageManager-iOS
//
//

import Foundation

class Storage {

  // MARK: - Private properties

  private var defaults: UserDefaults {
    UserDefaults.standard
  }

  // MARK: - Methods

  func string(forKey key: DefaultsKeys) -> String? {
    defaults.string(forKey: key.rawValue)
  }

  func set(_ value: String, forKey: DefaultsKeys) {
    defaults.set(value, forKey: forKey.rawValue)
  }
}
