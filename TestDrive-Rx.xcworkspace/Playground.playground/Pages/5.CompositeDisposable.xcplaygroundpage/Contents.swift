//: [Previous](@previous)

import Foundation
import RxSwift

/// Represents a group of disposable resources that are disposed together.

example("Simple dispose logic") {
    let disposable1 = Disposables.create { print("disposed-1 ☠️") }
    let disposable2 = Disposables.create { print("disposed-2 ☠️") }
    let disposable3 = Disposables.create { print("disposed-3 ☠️") }

    let disposable = CompositeDisposable(disposables: [disposable1, disposable2, disposable3])

    print("dispose")
    disposable.dispose()
}


example("Insert - disposable") {
    let disposable1 = Disposables.create { print("disposed-1 ☠️") }
    let disposable2 = Disposables.create { print("disposed-2 ☠️") }
    let disposable3 = Disposables.create { print("disposed-3 ☠️") }

    let disposable = CompositeDisposable(disposable1, disposable2)

    print("dispose")
    disposable.dispose()

    print("insert disposable3")
    disposable.insert(disposable3)
}


example("Remove - disposable") {
    let disposable1 = Disposables.create { print("disposed-1 ☠️") }
    let disposable2 = Disposables.create { print("disposed-2 ☠️") }
    let disposable3 = Disposables.create { print("disposed-3 ☠️") }

    let disposable = CompositeDisposable(disposable1, disposable2)

    print("insert disposable3")
    let key3 = disposable.insert(disposable3)

    if let key = key3 {
        print("remove disposable3")
        disposable.remove(for: key)
    }

    print("dispose")
    disposable.dispose()
}


//: [6.RefCountDisposable](@next)
