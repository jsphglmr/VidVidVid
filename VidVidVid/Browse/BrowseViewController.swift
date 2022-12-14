//
//  BrowseViewController.swift
//  VidVidVid
//
//  Created by Joseph Gilmore on 11/5/22.
//

import UIKit

class BrowseViewController: UIViewController {
    
    let sections = [
        "Trending",
        "New",
        "Classics"
    ]
    
    private let homeTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.separatorColor = .clear
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

extension BrowseViewController {
    func configureViews() {
        view.addSubview(homeTableView)
        let headerView = BrowseHeaderView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 300))
        homeTableView.tableHeaderView = headerView
    }
    
    func style() {
        view.backgroundColor = .systemGray
    }
    
    func layout() {
        homeTableView.frame = view.bounds
    }
}

extension BrowseViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
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
        return 25
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = sections[section]
        label.font = UIFont.preferredFont(forTextStyle: .title3)

        let headerView = UIView()
        headerView.addSubview(label)

        label.leadingAnchor.constraint(equalTo: headerView.leadingAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: headerView.centerYAnchor, constant: 15).isActive = true
        label.heightAnchor.constraint(equalToConstant: 60).isActive = true
        label.widthAnchor.constraint(equalToConstant: view.bounds.width).isActive = true

        return headerView
    }
    
}
