//
//  ViewController.swift
//  world-trotter
//
//  Created by Gabriel Turețchi on 02.02.2022.
//

import UIKit

class ConvertorViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let GLayer = CAGradientLayer()
        GLayer.frame = self.view.bounds
        GLayer.colors = [
            UIColor.red.cgColor,
            UIColor.blue.cgColor,
            UIColor.purple.cgColor,
            UIColor.white.cgColor
        ]
        
        self.view.layer.insertSublayer(GLayer, at:0)
        
    }
    
}

