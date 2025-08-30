//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Yuqin Luo on 8/29/25.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}

