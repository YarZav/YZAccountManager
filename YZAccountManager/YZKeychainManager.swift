//
//  YZKeychainManager.swift
//  YZKeychainManager
//
//  Created by ZAVYALOV Yaroslav on 02.12.2020.
//

// MARK: - YZKeychainManager

public class YZKeychainManager {
  public init() { }
}

// MARK: - YZKeychainManager

extension YZKeychainManager: YZKeychainManagerProtocol {
  public func save(key: String, data: Data) {
    let query: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword as String,
        kSecAttrAccount as String: key,
        kSecValueData as String: data
    ]

    SecItemDelete(query as CFDictionary)
    SecItemAdd(query as CFDictionary, nil)
  }

  public func load(key: String) -> Data? {
    let query: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword,
        kSecAttrAccount as String: key,
        kSecReturnData as String: kCFBooleanTrue as Any,
        kSecMatchLimit as String: kSecMatchLimitOne
    ]

    var dataTypeRef: AnyObject?
    let status: OSStatus = SecItemCopyMatching(query as CFDictionary, &dataTypeRef)

    if status == noErr, let dataTypeRef = dataTypeRef as? Data? {
      return dataTypeRef
    }

    return nil
  }

  public func delete(key: String) {
    let query: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword as String,
        kSecAttrAccount as String: key
    ]

    SecItemDelete(query as CFDictionary)
  }
}
