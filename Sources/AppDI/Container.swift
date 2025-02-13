// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Factory
import CoreModule

public extension Container {
    
    var httpClient: Factory<HTTPClientProtocol> {
        Factory(self) { HTTPClient() }
    }
}
