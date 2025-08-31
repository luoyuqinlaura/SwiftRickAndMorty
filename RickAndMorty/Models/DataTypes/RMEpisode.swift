//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Yuqin Luo on 8/29/25.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
//必须和网页一致， 如果 JSON 用的是 "air_date"，而我们用的是 airDate，需要自定义 CodingKeys
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String

}
