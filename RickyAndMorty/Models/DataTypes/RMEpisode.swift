//
//  RMEpisode.swift
//  RickyAndMorty
//
//  Created by daicanglan on 2023/4/1.
//

import Foundation

struct RMEpisode: Codable, RMEpisodeDataRender {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
