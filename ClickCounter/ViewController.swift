//
//  ViewController.swift
//  ClickCounter
//
//  Created by Javon Davis on 16/06/2017.
//  Copyright © 2017 Javon Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label: UILabel!
    @IBOutlet var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func toggleBackground() {
        self.view.backgroundColor = self.count%2 == 0 ? .red: .green
    }
    
    func updateLabel() {
       self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }

    @IBAction func incrementCount() {
        self.count += 1
        updateLabel()
        toggleBackground()
    }
    
    @IBAction func decrementCount() {
        self.count -= 1
        updateLabel()
        toggleBackground()
    }
}

