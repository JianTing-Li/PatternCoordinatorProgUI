//
//  CoordinatorProtocol.swift
//  CoordinatorPatternDemo
//
//  Created by Jian Ting Li on 8/9/19.
//  Copyright © 2019 Jian Ting Li. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinator: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
    func dismiss()
}
