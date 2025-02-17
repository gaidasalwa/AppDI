import XCTest
import Factory
@testable import AppDI
@testable import CoreModule

final class ContainerTests: XCTestCase {

    func testFactoryProvidesCorrectInstance() {
        // Given
        let container = Container()
        
        // When
        let httpClient: HTTPClientProtocol = container.httpClient()
        
        // Then
        XCTAssertTrue(httpClient is HTTPClient, "Factory doit retourner une instance de HTTPClient.")
    }

    func testFactoryCanUseMockImplementation() {
        // Given
        let container = Container()
        // Création d'une instance immuable de `MockHTTPClient` (évite les problèmes de capture)
        let mockClient = MockHTTPClient()

        // When
        container.httpClient.register { mockClient }  // Injection du Mock
        let resolvedClient: HTTPClientProtocol = container.httpClient()

        // Then
        XCTAssertTrue(resolvedClient is MockHTTPClient, "Factory doit permettre d'injecter un Mock.")
    }
}
