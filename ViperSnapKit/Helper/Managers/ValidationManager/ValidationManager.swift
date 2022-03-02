//
//  ValidationManager.swift
//  SearchApp
//
//  Created by Tolga İskender on 30.01.2022.
//

import Foundation

class ValidationManager {
    /// validate string
    static func validate(isNil text: String?) -> Bool {
        if text == nil || text == "" {
            return true
        }
        return false
    }
}
