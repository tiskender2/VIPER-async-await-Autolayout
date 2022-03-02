//
//  UITableView-Extension.swift
//  Foreks
//
//  Created by Tolga İskender on 20.02.2022.
//

import Foundation
import UIKit

extension UITableView {
    /// to register cell
    func register(cells: [UITableViewCell.Type]) {
        cells.forEach { cell in
            register(cell.classForCoder(), forCellReuseIdentifier: String(describing: cell))
        }
    }
    /// to dequeue Cell
    /// return Generic
    func dequeueCell<T>(withClassAndIdentifier classAndIdentifier: T.Type, for indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as! T
    }
    
    
}
