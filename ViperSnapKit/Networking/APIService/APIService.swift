//
//  APIServices.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import Foundation
import UIKit

protocol APIServiceProtocol {
    func getMovie() async throws -> Movie?
}

struct APIService: LoadingProtocol {
    let BASE_URL = NetworkConstant.BASE_URL
    
    func execute<T: Decodable>(loading: Bool = true) async throws -> T {
        loadingStatus(show: loading)
        
       
        guard let url = URL(string: BASE_URL) else {
            throw APIError.invalidURL
        }
        
        Logger.request(log: "Request: \(url)")
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == StatusCode.success.rawValue else {
                      hideLoading(isShowing: loading)
                      throw APIError.invalidResponseStatus
                  }
            let decoder = JSONDecoder()
            do {
                let decodedData = try decoder.decode(T.self, from: data)
                Logger.response(log: data.prettyPrintedJSONString ?? "")
                hideLoading(isShowing: loading)
                return decodedData
            } catch {
                hideLoading(isShowing: loading)
                throw APIError.decodingError(error.localizedDescription)
            }
        } catch {
            hideLoading(isShowing: loading)
            throw APIError.dataTaskError(error.localizedDescription)
        }
    }
}

extension APIService: APIServiceProtocol {
    func getMovie() async -> Movie? {
        let movie: Movie? = try? await execute(loading: false)
        return movie
    }
}
