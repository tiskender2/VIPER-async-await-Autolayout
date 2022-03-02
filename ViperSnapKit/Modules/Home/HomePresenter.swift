//
//  HomePresenter.swift
//  ViperSnapKit
//
//  Created by Tolga İskender on 2.03.2022.
//

import Foundation

protocol HomePresenterProtocol: AnyObject {
    func onViewDidLoad()
    func fetchedMovieSuccess(_ movie: Movie?)
    func fetchedMovieFailure(_ error: String?)
    func getEpisodesCount() -> Int
    func getEpisode(indexPath: IndexPath) -> Episode?
    func pushToDetail(data: Episode?)
    var movie: Movie? { get }
    
    init(interactor: HomeInteractorProtocol, router: HomeRouterProtocol)
}

final class HomePresenter {
    weak var view: HomeView?
    private var interactor: HomeInteractorProtocol
    private var router: HomeRouterProtocol
    
    var movie: Movie?
    
    required init(interactor: HomeInteractorProtocol, router: HomeRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

//MARK: - HomePresenterProtocol
extension HomePresenter: HomePresenterProtocol {
    
    func onViewDidLoad() {
        Task {
            await interactor.fetchMovie()
        }
    }
    
    func fetchedMovieSuccess(_ movie: Movie?) {
        self.movie = movie
        view?.reload()
    }
    
    func fetchedMovieFailure(_ error: String?) {
        Logger.plain(log: error ?? "Unknown")
    }
    
    func getEpisodesCount() -> Int {
        return movie?.episodes?.count ?? 0
    }
    
    func getEpisode(indexPath: IndexPath) -> Episode? {
        return movie?.episodes?[indexPath.row]
    }
    
    func pushToDetail(data: Episode?) {
        guard let data = data else {
            Logger.Log(item: data, .isNil)
            return
        }
        router.pushToHomeDetail(data: data)
    }
    
    
}
