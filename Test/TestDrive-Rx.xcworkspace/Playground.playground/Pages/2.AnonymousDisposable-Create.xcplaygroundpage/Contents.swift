//: [Previous](@previous)

/*:
 #### Private ````AnonymousDisposable```` class.

 ````
 public static func create(with dispose: @escaping () -> ()) -> Cancelable {
     return AnonymousDisposable(disposeAction: dispose)
 }
 ````
 */

import Foundation
import RxSwift

example {
    let observable = Observable<Void>.create { observer -> Disposable in
        // run request

        observer.onCompleted()
        return Disposables.create {
            // request.cancel()
            print("disposed ☠️")
        }
    }

    let disposable = observable.subscribe()
}

//: [Next](@next)
