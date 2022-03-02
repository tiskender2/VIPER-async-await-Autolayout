//
//  LoadingManagerUI.swift
//  SearchApp
//
//  Created by Tolga İskender on 30.01.2022.
//

import Foundation
extension LoadingManager: LogProtocol {
    func setupUI() {
        setupIndicator()
    }
}
extension LoadingManager {
    private func setupIndicator() {
        indicatorView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
