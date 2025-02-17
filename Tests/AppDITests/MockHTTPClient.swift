//
//  MockHTTPClient.swift
//  AppDI
//
//  Created by Gaida Salwa on 17/02/2025.
//


import Foundation
@testable import CoreModule

// Définition d'un client HTTP Mock pour les tests
// `@unchecked Sendable` permet d'utiliser cette classe dans des closures concurrentes
final class MockHTTPClient: HTTPClientProtocol, @unchecked Sendable {
    var shouldReturnError = false
    
    func sendRequest<T: Decodable>(to url: URLRequest, completion: @escaping (Result<T, Error>) -> Void) {
        if shouldReturnError {
            completion(.failure(NSError(domain: "TestError", code: -1, userInfo: nil)))
        } else {
            // Simuler une réponse vide générique
            completion(.success(Data() as! T))
        }
    }
    
    @available(iOS 13.0, *)
    func sendRequest<T: Decodable>(to url: URLRequest) async throws -> T {
        if shouldReturnError {
            throw NSError(domain: "TestError", code: -1, userInfo: nil)
        }
        return Data() as! T
    }
}
