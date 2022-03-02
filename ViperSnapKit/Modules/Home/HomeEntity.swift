//
//  HomeEntity.swift
//  ViperSnapKit
//
//  Created by Tolga İskender on 2.03.2022.
//

import Foundation
// MARK: - Movie
struct Movie: Codable {
    let title, season, totalSeasons: String?
    let episodes: [Episode]?
    let response: String?
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case season = "Season"
        case totalSeasons
        case episodes = "Episodes"
        case response = "Response"
    }
}

// MARK: - Episode
struct Episode: Codable {
    let title, released, episode, imdbRating: String?
    let imdbID: String?
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case released = "Released"
        case episode = "Episode"
        case imdbRating, imdbID
    }
}
