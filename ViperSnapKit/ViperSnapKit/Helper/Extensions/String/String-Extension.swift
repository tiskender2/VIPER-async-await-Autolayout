//
//  String-Extension.swift
//  SearchApp
//
//  Created by Tolga İskender on 30.01.2022.
//

import Foundation

extension String {
   
    /// encodedString to handle turkish chrachters for request
    func encodedURL() -> String? {
        return self.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    }
}
