//
//  SecondViewController.swift
//  CoordinatorPatternDemo
//
//  Created by Jian Ting Li on 8/9/19.
//  Copyright © 2019 Jian Ting Li. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    weak var coordinator: MainCoordinator?
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go To Blue VC", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setupContraints()
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
    }
    
    private func setupContraints() {
        view.addSubview(backButton)
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            backButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            backButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5)
            ])
    }

    @objc func goBack() {
        coordinator?.dismiss()
    }
}
