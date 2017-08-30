//: [Previous](@previous)

/*:
 #### Private ````BinaryDisposable```` class.

 ````
 public static func create(_ disposable1: Disposable, _ disposable2: Disposable) -> Cancelable {
     return BinaryDisposable(disposable1, disposable2)
 }
 ````
 */

import Foundation
import RxSwift

let disposable1 = Disposables.create {
    print("disposed-1")
}

let disposable2 = Disposables.create {
    print("disposed-2")
}

let binaryDisposable = Disposables.create(disposable1, disposable2)
print(binaryDisposable.isDisposed)

print("dispose")
binaryDisposable.dispose()
print(binaryDisposable.isDisposed)

//: [Next](@next)
