//
//  UIProtocol.swift
//  SearchApp
//
//  Created by Tolga İskender on 31.01.2022.
//

import Foundation
import UIKit

/// must be implemented for ui const in extension class
protocol UIProtocol: AnyObject {
    func setupUI()
}

//MARK: - Example
//
//extension ClassName: UIProtocol {
//    func setupUI() {
//      /// your constraint
//    }
//}
