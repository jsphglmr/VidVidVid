//
//  ViewController.swift
//  VidVidVid
//
//  Created by Joseph Gilmore on 11/5/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        view.backgroundColor = .systemBlue
    }
}

extension ViewController {
    func style() {
        
    }
    
    func layout() {
        view.addSubview(scrollView)
        scrollView.frame = view.bounds
    }
}
