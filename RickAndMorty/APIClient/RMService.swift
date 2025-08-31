//
//  RMService.swift
//  RickAndMorty
//
//  Created by Yuqin Luo on 8/30/25.
//

import Foundation


final class RMService {
// shared singleton
    static let shared = RMService()
    
//    private constructor, to make sure shared only one singleton
    private init(){}

    
    /// send rick and morty api call
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping(Result<T, Error>) -> Void){}
}
