//
//  ViewController.swift
//  no-storyboard
//
//  Created by Gabriel Turețchi on 24.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var scrollView: UIScrollView!
    private var scrollContentView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func loadScrollView() {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.alignSubview(scrollView)
        self.scrollView = scrollView
        
        let contentView = UIView()
        scrollView.alignSubview(contentView)
        self.scrollContentView = contentView
            
        NSLayoutConstraint.activate([
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.heightAnchor.constraint(greaterThanOrEqualTo: scrollView.heightAnchor),
        ])
    }


}

