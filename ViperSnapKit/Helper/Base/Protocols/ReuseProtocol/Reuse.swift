//
//  Reuse.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import Foundation

protocol Reuse: AnyObject {
    /// Reuse identifier
    static var reuseIdentifier: String { get }
}
