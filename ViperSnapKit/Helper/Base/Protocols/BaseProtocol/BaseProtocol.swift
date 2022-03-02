//
//  BaseProtocol.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import Foundation
import UIKit

protocol BaseProtocol: AnyObject {}

// MARK: - Default implementation for UIViewController.
extension BaseProtocol where Self: UIViewController {
    
    /// Preferred padding for autolayout
    var padding: CGFloat {
        return 16.0
    }
}
