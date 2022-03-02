//
//  HomeRouter.swift
//  ViperSnapKit
//
//  Created by Tolga İskender on 2.03.2022.
//

import UIKit

protocol HomeRouterProtocol {
    func pushToHomeDetail(data: Episode)
}

final class HomeRouter: HomeRouterProtocol {
    weak var view: UIViewController?
    weak var presenter: HomePresenterProtocol?
    
    func pushToHomeDetail(data: Episode) {
        let detail = HomeDetailBuilder.start(data: data)
        
        view?.navigationController?.pushViewController(detail, animated: true)
    }
}
