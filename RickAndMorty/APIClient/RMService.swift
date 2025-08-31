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

    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// send rick and morty api call
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping(Result<T, Error>) -> Void
    ){
//        建立请求，request方法建立urlrequest
             guard let urlRequest = self.request(from: request) else {
                completion(.failure(RMServiceError.failedToCreateRequest))
                return
            }
//        创建数据任务，发起http请求
            let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
                guard let data = data, error == nil else {
                    completion(.failure(error ?? RMServiceError.failedToGetData))
                    return
                }
                
                // Decode response
                do {
                    let result = try JSONDecoder().decode(type.self, from: data)
                    completion(.success(result))
                }
                catch {
                    completion(.failure(error))
                }
            }
        task.resume()
        }
    
//    MARK: - Private
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {return nil}
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
