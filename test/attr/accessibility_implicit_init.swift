// RUN: %target-typecheck-verify-swift -package-name myPkg



public struct Number: RawRepresentable { 
  // expected-error@-1 {{Implicit memberwise initializer ''init(rawValue:)'' is declared internal because it was synthesized but must be declared  public because it matches a requirement in public protocol 'RawRepresentable' }} {}
  public let rawValue: Int
}

