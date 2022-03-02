//
//  EpisodeCell.swift
//  ViperSnapKit
//
//  Created by Tolga İskender on 2.03.2022.
//

import UIKit

class EpisodeCell: UITableViewCell {
    
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: nil)
        selectionStyle = .none
        self.setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
//MARK: - Configure
extension EpisodeCell {
    
    func setCell(episode: Episode?) {
        titleLabel.text = "Title: \(episode?.title ?? "")"
        episodeLabel.text = "Episode: \(episode?.episode ?? "")"
        imdbLabel.text = "IMDBRating: \(episode?.imdbRating ?? "")"
        releasedLabel.text = "Released: \(episode?.released ?? "")"
    }
}


//MARK: - Constraint
extension EpisodeCell {
    
    private func setupCell() {
        setupStackView()
    }
    
    private func setupStackView() {
        contentView.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.top.equalToSuperview().inset(4)
        }
    }
}
