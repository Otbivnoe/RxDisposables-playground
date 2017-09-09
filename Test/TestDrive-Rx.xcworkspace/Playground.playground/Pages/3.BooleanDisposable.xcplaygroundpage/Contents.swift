//: [Previous](@previous)

import Foundation
import RxSwift

let disposable = BooleanDisposable()
print("isDisposed = \(disposable.isDisposed)")

print("dispose")
disposable.dispose()

print("isDisposed = \(disposable.isDisposed)")

//: [4.BinaryDisposable](@next)
