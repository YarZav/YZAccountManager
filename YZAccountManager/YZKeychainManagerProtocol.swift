// MARK: - YZKeychainManagerProtocol

public protocol YZKeychainManagerProtocol {
  /// Save data
  func save(key: String, data: Data)

  /// Load data
  func load(key: String) -> Data?

  /// Delete data
  func delete(key: String)
}

// MARK: - YZKeychainManagerProtocol default realization
public extension YZKeychainManagerProtocol {
  func save(key: String, data: Data) {
    fatalError("Need emplementation")
  }

  func load(key: String) -> Data? {
    fatalError("Need emplementation")
  }

  func delete(key: String) {
    fatalError("Need emplementation")
  }
}
