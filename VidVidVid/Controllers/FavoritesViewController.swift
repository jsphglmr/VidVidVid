//
//  FavoritesViewController.swift
//  VidVidVid
//
//  Created by Joseph Gilmore on 11/6/22.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "label text"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }
}

extension FavoritesViewController {
    func layout() {
        stackView.addArrangedSubview(label)
        view.addSubview(stackView)
        
        let stackViewConstraints = [
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ]
        NSLayoutConstraint.activate(stackViewConstraints)
    }
}

