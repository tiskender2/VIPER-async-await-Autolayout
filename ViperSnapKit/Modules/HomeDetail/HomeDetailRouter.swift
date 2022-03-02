//
//  HomeDetailRouter.swift
//  ViperSnapKit
//
//  Created by Tolga İskender on 2.03.2022.
//

import Foundation
import UIKit

protocol HomeDetailRouterProtocol {
    
}

final class HomeDetailRouter: HomeDetailRouterProtocol {
    weak var view: UIViewController?
    weak var presenter: HomeDetailPresenterProtocol?
}
