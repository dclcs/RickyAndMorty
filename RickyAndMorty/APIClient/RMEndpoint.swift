//
//  RMEndpoint.swift
//  RickyAndMorty
//
//  Created by daicanglan on 2023/4/1.
//

import Foundation

/// Represents unique API endpoints
@frozen enum RMEndPoint: String, CaseIterable, Hashable {
    /// Endpoint to get character info
    case character //"character"
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
