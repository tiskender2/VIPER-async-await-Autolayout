//
//  NetworkConstant.swift
//  SearchApp
//
//  Created by Tolga İskender on 30.01.2022.
//

import Foundation

enum StatusCode: Int {
    case success = 200
}


///Base url for request
class NetworkConstant {
    static var BASE_URL = "https://www.omdbapi.com/?i=tt0944947&Season=1&apikey=552d670b"
    
}

///Error mesages for pre request
extension NetworkConstant {
    static var invalidURL = "❗️❗️❗️ The endpoint URL is invalid"
    static var invalidResponseStatus = "❗️❗️❗️ The API failed to issue a valid response."
    static var corruptData =  "❗️❗️❗️ The data provided appears to be corrupt"
}
