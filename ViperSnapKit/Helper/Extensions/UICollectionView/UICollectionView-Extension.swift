//
//  UITableView-Extension.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import Foundation
import UIKit

extension UICollectionView {
    /// to register cells
    func setup(cells: [UICollectionViewCell.Type]) {
        for cell in cells {
            register(cell, forCellWithReuseIdentifier: cell.reuseIdentifier)
        }
    }
    /// to dequeue Cell
    /// return Generic
    func dequeueCell<T: UICollectionViewCell>(withType type: UICollectionViewCell.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: type.reuseIdentifier, for: indexPath) as! T
    }
    
    /// scrolling top of UICollectionView
    func scrollToTop() {
        self.setContentOffset(.zero, animated: false)
    }
    
    /// showing info label to user using backgroundView  when response nil or zero
    func showHideEmptyMessageView(message: String = "There were no results.", _ isHidden: Bool) {
        DispatchQueue.main.async {
            if isHidden == false {
                let view = BaseView(backgroundColor: .white)
                let messageLabel = UILabel()
                messageLabel.setup(textColor: .black,
                                   textAligment: .center,
                                   font: .boldSystemFont(ofSize: 20))
                messageLabel.text = message
                view.addSubview(messageLabel)
                messageLabel.snp.makeConstraints { make in
                    make.edges.equalToSuperview()
                }
                
                self.backgroundView = view
                
            } else {
                self.backgroundView = nil
            }
        }
    }
}
