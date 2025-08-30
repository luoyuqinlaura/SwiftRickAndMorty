//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Yuqin Luo on 8/30/25.
//

import Foundation

enum RMCharacterStatus: String, Codable {
//    官网写了The status of the character ('Alive', 'Dead' or 'unknown').注意你的真实string必须要匹配，不然对不上
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
