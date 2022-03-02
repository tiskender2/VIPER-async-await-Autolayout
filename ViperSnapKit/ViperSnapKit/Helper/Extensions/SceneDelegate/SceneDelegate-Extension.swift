//
//  SceneDelegate-Extension.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import Foundation
import UIKit
//MARK: - Root VC
extension SceneDelegate {
    /// change rootviewController
    func changeRootVC(vc: VCNames, windowScene: UIWindowScene) {
        window = UIWindow(windowScene: windowScene)
        let rootVC = vc.viewController
        rootVC.view.backgroundColor = .white
        let navController = UINavigationController(rootViewController: rootVC)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }
}
