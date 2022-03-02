//
//  BaseCVCell.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import Foundation
import UIKit
 
class BaseCVCell: UICollectionViewCell {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupViews()
        setupLayout()
    }
    
    /// Setup cell and its subviews here.
    open func setupViews() {
        backgroundColor = .white
    }
    
    /// Setup cell and its subviews autolayout here.
    open func setupLayout() {}
    
}
