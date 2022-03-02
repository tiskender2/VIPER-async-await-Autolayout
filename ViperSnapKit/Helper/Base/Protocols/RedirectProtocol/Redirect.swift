//
//  Redirec.swift
//  SearchApp
//
//  Created by Tolga İskender on 30.01.2022.
//

import Foundation
import UIKit

protocol Redirect: AnyObject {}

extension Redirect where Self: UIViewController {
    
    ///  basic push
    func push(to vc: UIViewController, animated: Bool = true) {
        guard let navigationContoller =  self.navigationController else {
            print("log")
            return
        }
        navigationContoller.pushViewController(vc, animated: animated)
    }
}
