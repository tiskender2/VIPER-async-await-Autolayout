//
//  UILabel-Extension.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import Foundation
import UIKit

extension UILabel {
    /// setup for label
    func setup(textColor: UIColor, textAligment: NSTextAlignment, numberOfLines: Int = 1, font: UIFont) {
        self.textColor = textColor
        self.textAlignment = textAligment
        self.numberOfLines = numberOfLines
        self.font = font
    }
}
