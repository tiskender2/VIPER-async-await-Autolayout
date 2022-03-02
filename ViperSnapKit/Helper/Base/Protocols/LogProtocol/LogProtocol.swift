//
//  LogProtocol.swift
//  SearchApp
//
//  Created by Tolga İskender on 30.01.2022.
//

import Foundation
protocol LogProtocol: AnyObject {}

extension LogProtocol where Self: Logger {
    static func printLog<T>(item: T, _ message: String) {
        print(T.self, message)
    }
}

