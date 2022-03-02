//
//  Border.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import Foundation
import UIKit

/// Conform to `Border` protocol to set border reloated properties for views.
public protocol Radius: AnyObject {}

// MARK: - Default implementation for UIView.
extension Radius where Self: UIView {
    
    /// View corner radius.
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            clipsToBounds = true
            layer.cornerRadius = newValue
        }
    }
}
