//
//  NavbarProtocol.swift
//  SearchApp
//
//  Created by Tolga İskender on 29.01.2022.
//

import UIKit

protocol Navbar: AnyObject {}

// MARK: - Default implementation for UINavigationBar.
extension Navbar where Self: UIViewController {
    
    ///MARK: - setup for navigation controller with searchbar
    func setupNavbarWithSearchBar(searchController: UISearchController,
                                  title: String,
                                  hidesSearchBarWhenScrolling: Bool = true) {
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = hidesSearchBarWhenScrolling
        navigationItem.title = title
    }
    ///MARK: -  basic setup for navigation controller
    func setupNavbar(title: String) {
        navigationItem.title = title
    }
}
