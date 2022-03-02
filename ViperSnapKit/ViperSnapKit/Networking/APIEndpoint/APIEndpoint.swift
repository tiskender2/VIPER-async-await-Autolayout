//
//  APIEndpoint.swift
//  SearchApp
//
//  Created by Tolga İskender on 30.01.2022.
//

import Foundation

enum APISevicesEndPoint {
    /// endpoints
    case gameofthrone
    
    ///fullPath
    var endPoint: String {
        switch self {
            case .search(let request):
                let requestableText = request.term.replacingOccurrences(of: " ", with: "+")
                return "?term=\(requestableText)&entity=\(request.entity)&limit=\(request.limit)"
        }
    }
}
