
/*:
 #### Private ````NopDisposable (Nop = No Operation)```` class.

````
 static public func create() -> Disposable {
     return NopDisposable.noOp
 }
````
*/

import Foundation
import RxSwift

example {
    let disposable = Disposables.create() // useful when disposable mechanism is not necessary
    disposable.dispose()
}

example {
    let observable = Observable<Void>.create { observer -> Disposable in
        /// some simple logic here without disposable logic
        observer.onCompleted()
        return Disposables.create()
    }
}

//: [2.AnonymousDisposable-Create](@next)
