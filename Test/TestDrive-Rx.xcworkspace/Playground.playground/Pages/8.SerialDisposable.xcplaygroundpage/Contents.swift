//: [Previous](@previous)

import Foundation
import RxSwift

/// Represents a disposable resource whose underlying disposable resource can be replaced by another disposable resource, causing automatic disposal of the previous underlying disposable resource.

let disposable1 = Disposables.create { print("disposed-1 ☠️") }
let disposable2 = Disposables.create { print("disposed-2 ☠️") }

let serialDisposable = SerialDisposable()

print("set disposable1")
serialDisposable.disposable = disposable1

print("set disposable2")
serialDisposable.disposable = disposable2

print("dispose")
serialDisposable.dispose()

//: [9.SingleAssignmentDisposable](@next)
