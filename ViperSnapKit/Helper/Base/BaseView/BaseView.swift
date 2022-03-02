//
//  BaseView.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import Foundation
import UIKit

class BaseView: UIView, BaseProtocol, Radius {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupViews()
        setupLayout()
    }
    /// Setup view and its subviews here.
    open func setupViews() {
        backgroundColor = .white
    }
    /// Setup view and its subviews autolayout here.
    open func setupLayout() {}
    
}

