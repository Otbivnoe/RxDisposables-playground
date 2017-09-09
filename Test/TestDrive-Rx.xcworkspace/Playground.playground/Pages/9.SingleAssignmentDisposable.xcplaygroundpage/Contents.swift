//: [Previous](@previous)

import Foundation
import RxSwift

/**
 Represents a disposable resource which only allows a single assignment of its underlying disposable resource.

 If an underlying disposable resource has already been set, future attempts to set the underlying disposable resource will throw an exception.
 */

let disposable1 = Disposables.create { print("disposed-1 ☠️") }
let disposable2 = Disposables.create { print("disposed-2 ☠️") }

let singleAssignmentDisposable = SingleAssignmentDisposable()

print("set disposable1")
singleAssignmentDisposable.setDisposable(disposable1)

print("set disposable2")
singleAssignmentDisposable.setDisposable(disposable2) // fatal error 

print("dispose")
singleAssignmentDisposable.dispose()



//: [Next](@next)
