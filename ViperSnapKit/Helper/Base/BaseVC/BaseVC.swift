//
//  BaseVC.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import UIKit

class BaseVC: UIViewController, BaseProtocol, Navbar {
#if DEBUG
    deinit {
        print("OS reclaiming memory for: \(self.classForCoder)")
    }
#endif
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavbar()
        setupViews()
        setupLayout()
    }
    
    /// Setup view and its subviews here.
    func setupViews() {}
    
    /// Setup view and its subviews autolayout here.
    func setupLayout() {}
    
    /// Setup navbar
    func setupNavbar() {}
    
}
