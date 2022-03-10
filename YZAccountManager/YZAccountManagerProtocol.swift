// MARK: - YZAccountManagerProtocol

public protocol YZAccountManagerProtocol {
  /// Create account
  func create(from dictionary: [String: Any?])

  /// Update current account
  func update(from dictionary: [String: Any?])

  /// Get current account
  func get() -> [String: Any?]?

  /// Delete current account
  func delete()
}

// MARK: - YZAccountManagerProtocol default realization

public extension YZAccountManagerProtocol {
  func create(from dictionary: [String: Any?]) {
    fatalError("Need implementation")
  }

  func update(from dictionary: [String: Any?]) {
    fatalError("Need implementation")
  }

  func get() -> [String: Any?]? {
    fatalError("Need implementation")
  }

  func delete() {
    fatalError("Need implementation")
  }
}
