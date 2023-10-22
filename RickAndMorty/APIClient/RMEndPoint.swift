//
//  RMEndPoint.swift
//  RickAndMorty
//
//  Created by Preeti Priyam on 10/20/23.
//

import Foundation


/// Represents unique API endpoint
@frozen enum RMEndPoint {
    /// Endpoint to get character Info
    case character
    /// Endpoint to get location Info
    case location
    /// Endpoint to get episode Info
    case episode
}
