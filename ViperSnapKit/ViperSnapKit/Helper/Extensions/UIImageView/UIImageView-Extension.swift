//
//  UIImageView-Extension.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import Foundation
import UIKit
import Kingfisher

extension UIImageView {
    /// use for url image with Kingfisher
    func setImage(urlString: String) {
        let url = URL(string: urlString)
        self.kf.setImage(with: url)
    }
}
