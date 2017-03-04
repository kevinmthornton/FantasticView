//
//  ViewController.swift
//  FantasticView
//
//  Created by Thornton, Kevin (ETW - FLEX Resource) on 3/3/17.
//  Copyright © 2017 kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set up the background
        let fantasticView = FantasticView(frame: self.view.bounds)
        self.view.addSubview(fantasticView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

