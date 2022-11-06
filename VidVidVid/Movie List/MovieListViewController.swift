//
//  ViewController.swift
//  VidVidVid
//
//  Created by Joseph Gilmore on 11/5/22.
//

import UIKit

class MovieListViewController: UIViewController {
    
    private let collectionView: UICollectionView = {
        let cView = UICollectionView()
        cView.allowsFocus = true
        return cView
    }()
    
    private let stackView: UIStackView = {
        let sView = UIStackView()
        sView.axis = .vertical
        return sView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        style()
        layout()
        view.backgroundColor = .systemRed
    }
}

extension MovieListViewController {
    func configureCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func style() {
        
    }
    
    func layout() {
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
    }
}

extension MovieListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell()
        cell.backgroundColor = .systemBlue
        return cell
    }
    
}
