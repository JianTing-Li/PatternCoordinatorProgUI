//
//  ViewController.swift
//  CoordinatorPatternDemo
//
//  Created by Jian Ting Li on 8/9/19.
//  Copyright © 2019 Jian Ting Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    weak var coordinator: MainCoordinator?
    lazy var forwardButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go To Blue VC", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupContraints()
        forwardButton.addTarget(self, action: #selector(goToBlueVC), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(true)
    }
    
    private func setupContraints() {
        view.addSubview(forwardButton)
        NSLayoutConstraint.activate([
            forwardButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            forwardButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            forwardButton.heightAnchor.constraint(equalToConstant: 40),
            forwardButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5)
            ])
    }

    @objc func goToBlueVC() {
        coordinator?.blueVC()
    }
}

