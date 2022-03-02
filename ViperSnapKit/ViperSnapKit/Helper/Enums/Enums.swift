//
//  Enums.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import Foundation
import UIKit

//MARK: - to change root vc
enum VCNames: CaseIterable {
    case homeVC
    case detailVC
    
    var viewController: UIViewController {
        switch self {
            case .homeVC:
                return HomeBuilder.start()
            case .detailVC:
                return UIViewController()
        }
    }
    
    /// navigation bar title
    var navbarTitle: String {
        switch self {
            case .homeVC:
                return Constants.home
            case .detailVC:
                return Constants.detail
        }
    }
}
