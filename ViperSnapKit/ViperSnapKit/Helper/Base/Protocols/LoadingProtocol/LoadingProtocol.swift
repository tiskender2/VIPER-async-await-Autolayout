//
//  LoadingProtocol.swift
//  SearchApp
//
//  Created by Tolga İskender on 31.01.2022.
//

import Foundation
import UIKit

protocol LoadingProtocol {}

extension LoadingProtocol where Self: APIServiceProtocol {
    ///check loading status and decide show or hide
    func loadingStatus(show: Bool) {
        if show {
            showLoading()
        } else {
            hideLoading(isShowing: show)
        }
    }
    
    ///to show indicator
    func showLoading() {
        DispatchQueue.main.async {
            let currentVC = UIApplication.topViewController()
            let vc = LoadingManager()
            vc.modalTransitionStyle = .crossDissolve
            vc.modalPresentationStyle = .overFullScreen
            currentVC?.present(vc, animated: true)
        }
    }
    
    ///to hide indicator
    func hideLoading(isShowing: Bool) {
        if isShowing == false {
            return
        }
        DispatchQueue.main.async {
            let currentVC = UIApplication.topViewController()
            currentVC?.dismiss(animated: true)
        }
    }
}
