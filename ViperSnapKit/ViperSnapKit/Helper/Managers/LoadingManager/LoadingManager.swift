//
//  LoadingManager.swift
//  SearchApp
//
//  Created by Tolga İskender on 30.01.2022.
//

import UIKit

class LoadingManager: BaseVC {
    
    lazy var indicatorView: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView(style: .large)
        view.color = .black
        view.startAnimating()
        return view
    }()
    
    override func setupViews() {
        view.backgroundColor = .black.withAlphaComponent(0.4)
        view.addSubview(indicatorView)
    }
    
    override func setupLayout() {
        setupIndicator()
    }
    
}
//MARK: - Constraint
extension LoadingManager {
    private func setupIndicator() {
        indicatorView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
