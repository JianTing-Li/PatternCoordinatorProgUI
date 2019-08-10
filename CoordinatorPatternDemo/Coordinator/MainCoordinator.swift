//
//  MainCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Jian Ting Li on 8/9/19.
//  Copyright © 2019 Jian Ting Li. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinator = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func dismiss() {
        navigationController.popViewController(animated: true)
    }
    
    func blueVC() {
        let vc = SecondViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
