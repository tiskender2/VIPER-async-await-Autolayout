//
//  UITableViewCell-Extension.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import Foundation
import UIKit

extension UICollectionViewCell: Reuse {
    /// to get UICollectionViewCell's string Identifier
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
