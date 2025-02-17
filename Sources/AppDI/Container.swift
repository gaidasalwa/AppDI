// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Factory
import CoreModule

// On étend `Container` pour ajouter une propriété les propriétés
public extension Container {
    
    /// Définition d'une Factory pour créer une instance de `HTTPClientProtocol`
    var httpClient: Factory<HTTPClientProtocol> {
        // la factory est rattachée au `Container` actuel
        // définir comment l'instance de `HTTPClientProtocol` est créée
        Factory(self) { HTTPClient() }
    }
}
