//
//  HomeView.swift
//  ViperSnapKit
//
//  Created by Tolga İskender on 2.03.2022.
//

import UIKit
import SnapKit

protocol HomeViewProtocol {
    func reload()
    
    init(presenter: HomePresenterProtocol)
}

final class HomeView: BaseVC {
    
    private lazy var tableView: UITableView = {
        let tbl = UITableView()
        tbl.dataSource = self
        tbl.delegate = self
        tbl.rowHeight = UITableView.automaticDimension
        tbl.register(cells: [EpisodeCell.self])
        return tbl
    }()
    
    private let presenter: HomePresenterProtocol
    
    required init(presenter: HomePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.onViewDidLoad()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupViews() {
        view.addSubview(tableView)
    }
    
    override func setupLayout() {
        setupTableView()
    }
    
    override func setupNavbar() {
        self.setupNavbar(title: Constants.home)
    }
    
}

//MARK: - HomeViewProtocol
extension HomeView: HomeViewProtocol {
    func reload() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

//MARK: - UITableViewDelegate
extension HomeView: UITableViewDelegate {
    
}

//MARK: - UITableViewDataSource
extension HomeView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.getEpisodesCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueCell(withClassAndIdentifier: EpisodeCell.self, for: indexPath)
        cell.setCell(episode: presenter.getEpisode(indexPath: indexPath))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.pushToDetail(data: presenter.getEpisode(indexPath: indexPath))
    }
    
}

//MARK: - Constraint
extension HomeView {
    private func setupTableView() {
        tableView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.top.equalTo(view.safeAreaLayoutGuide)
        }
    }
}
