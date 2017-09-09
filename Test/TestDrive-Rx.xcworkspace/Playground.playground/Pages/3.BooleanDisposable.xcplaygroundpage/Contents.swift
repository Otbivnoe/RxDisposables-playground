//: [Previous](@previous)

import Foundation
import RxSwift

let disposable = BooleanDisposable()
print(disposable.isDisposed)

print("dispose")
disposable.dispose()

print(disposable.isDisposed)

//: [Next](@next)
