//
//  ViewController.swift
//  VidVidVid
//
//  Created by Joseph Gilmore on 11/5/22.
//

import UIKit

class MovieListViewController: UIViewController {
    
    private let homeTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        style()
        homeTableView.delegate = self
        homeTableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        layout()
    }
}

extension MovieListViewController {
    func configureViews() {
        view.addSubview(homeTableView)
    }
    
    func style() {
        view.backgroundColor = .systemGray
    }
    
    func layout() {
        homeTableView.frame = view.bounds
    }
}

extension MovieListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
}
