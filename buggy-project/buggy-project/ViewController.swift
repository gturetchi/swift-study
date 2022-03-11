//
//  ViewController.swift
//  buggy-project
//
//  Created by Gabriel Turețchi on 10.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTap(_ sender: UIButton) {
        print("Called buttonTap(_:)")
        print("Method: \(#function) in file: \(#file) line: \(#line) called.")
        badMethod()
    }

    func badMethod() {
        let array = NSMutableArray()
        for i in 0..<10 {
            array.insert(i, at: i)
        }
        for _ in 0..<10 {
            array.removeObject(at: 0)
        }
    }
}

