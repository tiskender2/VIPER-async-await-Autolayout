//
//  HomeDetailPresenter.swift
//  ViperSnapKit
//
//  Created by Tolga İskender on 2.03.2022.
//

import Foundation

protocol HomeDetailPresenterProtocol: AnyObject {
    func onViewDidLoad()
    
    init(interactor: HomeDetailInteractorProtocol, router: HomeDetailRouterProtocol)
}

final class HomeDetailPresenter {
    weak var view: HomeDetailViewProtocol?
    private var interactor:  HomeDetailInteractorProtocol
    private var router:  HomeDetailRouterProtocol
    
    
    required init(interactor: HomeDetailInteractorProtocol, router: HomeDetailRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

//MARK: - HomeDetailPresenterProtocol
extension HomeDetailPresenter: HomeDetailPresenterProtocol {
    
    func onViewDidLoad() {
        view?.setData()
    }
}
