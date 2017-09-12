//: [Previous](@previous)

import Foundation
import RxSwift

/// Represents a disposable resource that only disposes its underlying disposable resource when all dependent disposable objects have been disposed.

let disposable1 = Disposables.create { print("disposed-1 ☠️") }

let refCountDisposable = RefCountDisposable(disposable: disposable1)

let holdDisposable1 = refCountDisposable.retain()
let holdDisposable2 = refCountDisposable.retain()

print("main dispose")
refCountDisposable.dispose()

print("hold1 dispose")
holdDisposable1.dispose()

print("hold1 dispose")
holdDisposable2.dispose()

//: [7.ScheduledDisposable](@next)
