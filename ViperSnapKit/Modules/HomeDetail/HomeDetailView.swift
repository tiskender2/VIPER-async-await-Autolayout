//
//  HomeDetailView.swift
//  ViperSnapKit
//
//  Created by Tolga İskender on 2.03.2022.
//

import UIKit
protocol HomeDetailViewProtocol: AnyObject {
    var episode: Episode? { get set }
    func setData()
    
    init(presenter: HomeDetailPresenterProtocol, episode: Episode)
}

final class HomeDetailView: BaseVC {
    
    private lazy var stackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [titleLabel,
                                                episodeLabel,
                                                imdbLabel,
                                                releasedLabel])
        sv.axis = .vertical
        sv.distribution = .equalSpacing
        sv.alignment = .fill
        sv.spacing = 8
        return sv
    }()
    
    private lazy var titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        return lbl
    }()
    
    private lazy var episodeLabel: UILabel = {
        let lbl = UILabel()
        return lbl
    }()
    
    private lazy var imdbLabel: UILabel = {
        let lbl = UILabel()
        return lbl
    }()
    
    private lazy var releasedLabel: UILabel = {
        let lbl = UILabel()
        return lbl
    }()
    
    private let presenter: HomeDetailPresenterProtocol
    
    var episode: Episode?
    
    required init(presenter: HomeDetailPresenterProtocol, episode: Episode) {
        self.presenter = presenter
        self.episode = episode
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
        view.addSubview(stackView)
    }
    
    override func setupLayout() {
        setupUI()
    }
    
    override func setupNavbar() {
        self.setupNavbar(title: Constants.detail)
    }
}

//MARK: - HomeDetailViewProtocol
extension HomeDetailView: HomeDetailViewProtocol {
    func setData() {
        titleLabel.text = "Title: \(episode?.title ?? "")"
        episodeLabel.text = "Episode: \(episode?.episode ?? "")"
        imdbLabel.text = "IMDBRating: \(episode?.imdbRating ?? "")"
        releasedLabel.text = "Released: \(episode?.released ?? "")"
    }
}

//MARK: - Constraint
extension HomeDetailView {
    
    private func setupUI() {
        setupStackView()
    }
    
    private func setupStackView() {
        view.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
