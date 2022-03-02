//
//  HomeDetailBuilder.swift
//  ViperSnapKit
//
//  Created by Tolga İskender on 2.03.2022.
//

import Foundation
import UIKit

final class HomeDetailBuilder: BuilderProtocolGeneric {
    
    typealias T = Episode
    
    static func start(data: Episode) -> UIViewController {
        let service = APIService()
        let interactor = HomeDetailInteractor(service: service)
        let router = HomeDetailRouter()
        let presenter = HomeDetailPresenter(interactor: interactor,
                                      router: router)
        
        let view = HomeDetailView(presenter: presenter,
                                  episode: data)
        
        presenter.view = view
        interactor.presenter = presenter
        router.presenter = presenter
        router.view = view
        
        return view
    }

}
