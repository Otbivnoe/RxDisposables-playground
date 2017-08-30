import Cocoa
import RxSwift

// Dispose bag

//var disposeBag: DisposeBag? = DisposeBag()
//
//let observable = Observable<Int>.create { observer in
//    return Disposables.create {
//        print("disposable block")
//    }
//}
//
//disposeBag?.insert(observable.subscribe())
//disposeBag = nil





// BinaryDisposable

//let disposable1 = Disposables.create {
//    print("first")
//}
//
//let disposable2 = Disposables.create {
//    print("second")
//}
//
//let binaryDisposable = Disposables.create(disposable1, disposable2)
//binaryDisposable.dispose()





// CompositeDisposable

//let disposable1 = Disposables.create {
//    print("first")
//}
//
//let disposable2 = Disposables.create {
//    print("second")
//}
//
//let compositeDisposable = CompositeDisposable(disposable1, disposable2)
//compositeDisposable.dispose()
//
//let disposable3 = Disposables.create {
//    print("third")
//}
//
//compositeDisposable.insert(disposable3)





/// RefCountDisposable

//let refCountDisposable = RefCountDisposable(disposable: Disposables.create {
//    print("disposed")
//})
//
//let disposable1 = refCountDisposable.retain()
//let disposable2 = refCountDisposable.retain()
//
//disposable1.dispose()
//disposable2.dispose()
//
//refCountDisposable.dispose()




/// ScheduledDisposable

//let queue = DispatchQueue.global()
//let scheduler = ConcurrentDispatchQueueScheduler(queue: queue)
//
//let observable = Observable<Int>.create { observer in
//    observer.onCompleted()
//    return ScheduledDisposable(scheduler: scheduler, disposable: Disposables.create {
//        print("thread - \(Thread.current)")
//    })
//}
//
//observable.subscribe()





/// SerialDisposable

//let serialDisposable = SerialDisposable()
//
//serialDisposable.disposable = Disposables.create {
//    print("disposed 1")
//}
//
//serialDisposable.disposable = Disposables.create {
//    print("disposed 2")
//}
//
//serialDisposable.dispose()





/// SingleAssignmentDisposable

let singleAssignmentDisposable = SingleAssignmentDisposable()

let disposable1 = Disposables.create {
    print("first")
}

let disposable2 = Disposables.create {
    print("second")
}

singleAssignmentDisposable.setDisposable(disposable1)
singleAssignmentDisposable.dispose()

singleAssignmentDisposable.setDisposable(disposable2)

