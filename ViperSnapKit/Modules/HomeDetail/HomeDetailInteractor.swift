//
//  HomeDetailInteractor.swift
//  ViperSnapKit
//
//  Created by Tolga İskender on 2.03.2022.
//

import Foundation

protocol HomeDetailInteractorProtocol {
    init(service: APIServiceProtocol)
}

final class HomeDetailInteractor {
    private var service: APIServiceProtocol
    weak var presenter: HomeDetailPresenterProtocol?
    
    required init(service: APIServiceProtocol) {
        self.service = service
    }
    
}
//MARK: - HomeDetailInteractorProtocol
extension HomeDetailInteractor: HomeDetailInteractorProtocol {
    
}
