//
//  StackView.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import Foundation
import UIKit

extension UIStackView: BaseProtocol {
    /// setup for StackView
    func setup(axis: NSLayoutConstraint.Axis,
               alignment: UIStackView.Alignment = .fill,
               distribution: UIStackView.Distribution = .fill,
               spacing: CGFloat = 0.0) {
        
        self.axis = axis
        self.alignment = alignment
        self.distribution = distribution
        self.spacing = spacing
    }
}
