//: [Previous](@previous)

import Foundation
import RxSwift

/// Represents a disposable resource whose disposal invocation will be scheduled on the specified scheduler.

let queue = DispatchQueue.global()
let scheduler = ConcurrentDispatchQueueScheduler(queue: queue)

let observable = Observable<Int>.create { observer in
    observer.onCompleted()
    return ScheduledDisposable(scheduler: scheduler, disposable: Disposables.create {
        print("thread - \(Thread.current)")
    })
}

observable.subscribe()

//: [8.SerialDisposable](@next)
