import Foundation
import ExampleLib

struct Bar {
  let foo: Foo
  var val: Int
}

struct Foo {
  var val: Int
}

let bar = Bar(foo: Foo(val: 2), val: 3)

#example()
//Example() {
//  let v = $0.capture(bar.self, column: 8)
//  return true
//}
//.render()
