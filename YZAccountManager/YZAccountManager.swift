//
//  YZAccountManager.swift
//  YZAccountManager
//
//  Created by ZAVYALOV Yaroslav on 02.12.2020.
//

// MARK: - YZAccountManager

public class YZAccountManager {
  private let keychain: YZKeychainManagerProtocol
  private let key: String

  /// Init with `keychain`, `key`
  ///
  /// - Parameters:
  ///     - keychain: Keychain storage
  ///     - key: Key for storage
  public init(keychain: YZKeychainManagerProtocol, key: String) {
    self.keychain = keychain
    self.key = key
  }
}

// MARK: - YZAccountManager

extension YZAccountManager: YZAccountManagerProtocol {
  public func create(from dictionary: [String: Any?]) {
    let data: Data = NSKeyedArchiver.archivedData(withRootObject: dictionary)
    keychain.save(key: key, data: data)
  }

  public func update(from dictionary: [String: Any?]) {
    let data: Data = NSKeyedArchiver.archivedData(withRootObject: dictionary)
    keychain.save(key: key, data: data)
  }

  public func get() -> [String: Any?]? {
    guard let data = keychain.load(key: key) else { return nil }
    guard let dictionary = NSKeyedUnarchiver.unarchiveObject(with: data) as? [String: Any?] else { return nil }
    return dictionary
  }

  public func delete() {
    keychain.delete(key: key)
  }
}
