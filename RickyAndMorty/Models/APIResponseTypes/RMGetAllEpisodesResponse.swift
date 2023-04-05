//
//  RMGetAllEpisodesResponse.swift
//  RickyAndMorty
//
//  Created by daicanglan on 2023/4/5.
//

import Foundation

struct RMGetAllEpisodesResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    let info: Info
    let results: [RMEpisode]
}
