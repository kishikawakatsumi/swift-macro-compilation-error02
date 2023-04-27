import Foundation

public class Example {
  public init(evaluate: (Example) throws -> Bool = { _ in true }) {}

  public func capture<T>(_ expr: @autoclosure () throws -> T, column: Int) rethrows -> T {
    let val = try expr()
    return val
  }

  public func render() {}
}
