//
//  ViewController.swift
//  ASHProgressView
//
//  Created by sheikhamais on 08/08/2022.
//  Copyright (c) 2022 sheikhamais. All rights reserved.
//

import UIKit
import ASHProgressView

class ViewController: UIViewController {

    var containerView: UIView =
    {
        let obj = UIView()
        obj.translatesAutoresizingMaskIntoConstraints = false
        obj.backgroundColor = .white
        return obj
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ASHProgessViewStyle.standard = .plainCircle("Hello, wait!", .orange)
        view.backgroundColor = .gray
        view.addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 12),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12)
        ])
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.containerView.showProgressView()
        }
    }
}
