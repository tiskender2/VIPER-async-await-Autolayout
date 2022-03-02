//
//  HomeInteractor.swift
//  ViperSnapKit
//
//  Created by Tolga İskender on 2.03.2022.
//

import Foundation

protocol HomeInteractorProtocol {
    func fetchMovie() async
    
    init(service: APIServiceProtocol)
}

final class HomeInteractor {
    private var service: APIServiceProtocol
    weak var presenter: HomePresenterProtocol?
    
    required init(service: APIServiceProtocol) {
        self.service = service
    }
    
}
//MARK: - HomeInteractorProtocol
extension HomeInteractor: HomeInteractorProtocol {
    
    func fetchMovie() async {
        do {
            let movie = try await service.getMovie()
            presenter?.fetchedMovieSuccess(movie)
        } catch {
            presenter?.fetchedMovieFailure(error.localizedDescription)
        }
    }
}
