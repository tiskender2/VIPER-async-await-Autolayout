//
//  UIApplication-Extension.swift
//  SearchApp
//
//  Created by Tolga İskender on 30.01.2022.
//

import Foundation
import UIKit

extension UIApplication {
    /// to get top controller in navigationController, tabbarController or presentedViewController
    /// Return: UIViewController
    static func topViewController(controller: UIViewController? = nil) -> UIViewController? {
        let vc: UIViewController?
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        if let currentVC = controller {
            vc = currentVC
        } else {
            vc = windowScene?.windows.first?.rootViewController
        }
        if let navigationController = vc as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = vc as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = vc?.presentedViewController {
            return topViewController(controller: presented)
        }
        
        return controller
    }
}
