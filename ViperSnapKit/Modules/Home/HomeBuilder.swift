//
//  HomeBuilder.swift
//  ViperSnapKit
//
//  Created by Tolga İskender on 2.03.2022.
//

import Foundation
import UIKit

final class HomeBuilder: BuilderProtocol {
    
    static func start() -> UIViewController {
        let service = APIService()
        let interactor = HomeInteractor(service: service)
        let router = HomeRouter()
        let presenter = HomePresenter(interactor: interactor,
                                      router: router)
        
        let view = HomeView(presenter: presenter)
        
        presenter.view = view
        interactor.presenter = presenter
        router.presenter = presenter
        router.view = view
        
        return view
    }
}
