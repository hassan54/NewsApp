//
//  Obfuscator.swift
//  NewsApp
//

//  Created by Hassan Masood on 14/11/2023.
//

import UIKit

enum Obfuscator {
  /// deobfuscate the bytes array `obfuscatedChars` to the key using the `cipher` string.
  ///
  /// - parameter cipher: The key that will be used to deobfuscate the bytes array.
  /// - parameter obfuscatedChars: The bytes array to deobfuscate
  ///
  static func deObfuscate(_ cipher: String, _ obfuscatedChars: [UInt8]) -> String {
    let cipher = [UInt8](cipher.utf8)
    var bytes = [UInt8]()
    obfuscatedChars.enumerated().forEach { item in
      bytes.append(item.element ^ cipher[item.offset % cipher.count])
    }
    return String(bytes: bytes, encoding: .utf8)!
  }
}
