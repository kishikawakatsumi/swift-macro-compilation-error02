import SwiftSyntax
import SwiftSyntaxMacros

public struct ExampleMacro: ExpressionMacro {
  public static func expansion(
    of node: some FreestandingMacroExpansionSyntax,
    in context: some MacroExpansionContext
  ) -> ExprSyntax {
    return ExprSyntax(
      stringLiteral: """
      Example() {
        let v = $0.capture(bar.self, column: 8)
        return true
      }
      .render()
      """
    )
    .with(\.leadingTrivia, node.leadingTrivia)
  }
}
