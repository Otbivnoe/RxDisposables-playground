import Foundation

public func example(_ description: String? = nil, action: () -> Void) {
    if let description = description {
        printExampleHeader(description)
    }
    action()
}

public func printExampleHeader(_ description: String) {
    print("\n--- \(description) example ---")
}
