//
//  BuilderProtocol.swift
//  ViperSnapKit
//
//  Created by Tolga İskender on 2.03.2022.
//

import UIKit

protocol BuilderProtocol {
    static func start() -> UIViewController
}

protocol BuilderProtocolGeneric {
    associatedtype T
    static func start(data: T) -> UIViewController
}
