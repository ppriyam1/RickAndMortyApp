//
//  RMService.swift
//  RickAndMorty
//
//  Created by Preeti Priyam on 10/20/23.
//

import Foundation

/// API Service to fetch Rick&Morty data
final class RMService {
    
    /// Shared singleton object
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Execute rick and morty API call
    /// - Parameters:
    ///   - request: Request object
    ///   - completion: callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {}
    
}
